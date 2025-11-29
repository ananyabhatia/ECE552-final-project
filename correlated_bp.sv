module correlated_bp #(
    parameter INDEX_BITS = 8,
    parameter HISTORY_BITS = 8
) (
    input  logic         clock,
    input  logic         reset,        
    input  logic [31:0]  PC,           
    output logic         direction,    
    output logic [31:0]  target,
    input  logic         update_en,   
    input  logic [31:0]  update_pc,    
    input  logic         update_taken, 
    input  logic [31:0]  update_target,
    input  logic         mispredict,
    input  logic [HISTORY_BITS-1:0] recover_ghr
);

localparam PHT_ENTRIES = 1 << (INDEX_BITS + HISTORY_BITS);
localparam BTB_ENTRIES = 1 << INDEX_BITS;
localparam TAG_WIDTH = 32 - (INDEX_BITS + 2);

logic [1:0]   pht    [0:PHT_ENTRIES-1];
logic         btb_v  [0:BTB_ENTRIES-1];          
logic [TAG_WIDTH-1:0] btb_tag [0:BTB_ENTRIES-1]; 
logic [31:0]  btb_target [0:BTB_ENTRIES-1];

logic [HISTORY_BITS-1:0] ghr;

logic [INDEX_BITS-1:0] idx_fetch;
logic [TAG_WIDTH-1:0]  tag_fetch;
logic [INDEX_BITS+HISTORY_BITS-1:0] pht_idx_fetch;

logic [INDEX_BITS-1:0] idx_update;
logic [TAG_WIDTH-1:0]  tag_update;
logic [INDEX_BITS+HISTORY_BITS-1:0] pht_idx_update;

assign idx_fetch  = PC[INDEX_BITS+1:2];
assign idx_update = update_pc[INDEX_BITS+1:2];

assign pht_idx_fetch  = {ghr, idx_fetch};
assign pht_idx_update = {recover_ghr, idx_update};

generate
    if (TAG_WIDTH > 0) begin
        assign tag_fetch  = PC[31:INDEX_BITS+2];
        assign tag_update = update_pc[31:INDEX_BITS+2];
    end
endgenerate

generate
    for (genvar i = 0; i < PHT_ENTRIES; i = i + 1) begin : init_pht
        always_ff @(posedge clock) begin
            if (reset) begin
                pht[i] <= 2'b01;
            end
        end
    end
    
    for (genvar i = 0; i < BTB_ENTRIES; i = i + 1) begin : init_btb
        always_ff @(posedge clock) begin
            if (reset) begin
                btb_v[i] <= 1'b0;
                btb_tag[i] <= '0;
                btb_target[i] <= 32'b0;
            end
        end
    end
endgenerate

always_ff @(posedge clock) begin
    if (reset) begin
        ghr <= '0;
    end else if (mispredict) begin
        ghr <= {recover_ghr[HISTORY_BITS-2:0], update_taken};
    end else if (direction) begin
        ghr <= {ghr[HISTORY_BITS-2:0], 1'b1};
    end else begin
        ghr <= {ghr[HISTORY_BITS-2:0], 1'b0};
    end
end

always_ff @(posedge clock) begin
    if (!reset && update_en) begin
        case (pht[pht_idx_update])
            2'b00: pht[pht_idx_update] <= update_taken ? 2'b01 : 2'b00;
            2'b01: pht[pht_idx_update] <= update_taken ? 2'b10 : 2'b00;
            2'b10: pht[pht_idx_update] <= update_taken ? 2'b11 : 2'b01;
            2'b11: pht[pht_idx_update] <= update_taken ? 2'b11 : 2'b10;
            default: pht[pht_idx_update] <= 2'b01;
        endcase
        
        if (update_taken) begin
            btb_v[idx_update] <= 1'b1;
            if (TAG_WIDTH > 0) btb_tag[idx_update] <= tag_update;
            btb_target[idx_update] <= update_target;
        end
    end
end

logic btb_match;
logic [1:0] counter_here;

assign counter_here = pht[pht_idx_fetch];

generate
    if (TAG_WIDTH > 0) begin
        assign btb_match = btb_v[idx_fetch] && (btb_tag[idx_fetch] == tag_fetch);
    end else begin
        assign btb_match = btb_v[idx_fetch];
    end
endgenerate

always_comb begin
    if (btb_match && counter_here[1]) begin
        direction = 1'b1;
        target = btb_target[idx_fetch];
    end else begin
        direction = 1'b0;
        target = PC + 32'd4;
    end
end

endmodule