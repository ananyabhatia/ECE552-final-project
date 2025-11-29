module bp #(
    parameter INDEX_BITS = 8 // 2^INDEX_BITS entries (changeable)
) (
    input  logic         clock,
    input  logic         reset,        
    input  logic [31:0]  PC,           
    output logic         direction,    
    output logic [31:0]  target,       
    // update interface (driven by EX stage)
    input  logic         update_en,   
    input  logic [31:0]  update_pc,    
    input  logic         update_taken, 
    input  logic [31:0]  update_target 
);

    localparam ENTRIES = (1 << INDEX_BITS);
    localparam TAG_WIDTH = 32 - (INDEX_BITS + 2);

    logic [1:0]   bht    [0:ENTRIES-1];          // 2-bit saturating counters
    logic         btb_v  [0:ENTRIES-1];          
    logic [TAG_WIDTH-1:0] btb_tag [0:ENTRIES-1]; // tag = upper PC bits
    logic [31:0]  btb_target [0:ENTRIES-1];      // predicted target

    logic [INDEX_BITS-1:0] idx_fetch;
    logic [TAG_WIDTH-1:0]  tag_fetch;
    logic [INDEX_BITS-1:0] idx_update;
    logic [TAG_WIDTH-1:0]  tag_update;

    assign idx_fetch  = PC[INDEX_BITS+1:2];
    if (TAG_WIDTH > 0) begin
        assign tag_fetch  = PC[31:INDEX_BITS+2];
    end else begin
        wire unused_tag_fetch = 1'b0;
    end

    assign idx_update = update_pc[INDEX_BITS+1:2];
    if (TAG_WIDTH > 0) begin
        assign tag_update = update_pc[31:INDEX_BITS+2];
    end

    generate
        for (genvar i = 0; i < ENTRIES; i = i + 1) begin : init_entry
            always_ff @(posedge clock) begin
                if (reset) begin
                    bht[i]      <= 2'b01;      // weakly not taken
                    btb_v[i]    <= 1'b0;
                    btb_tag[i]  <= '0;
                    btb_target[i]<= 32'b0;
                end
            end
        end
    endgenerate


    always_ff @(posedge clock) begin
        if (!reset) begin
            if (update_en) begin
                case (bht[idx_update])
                    2'b00: bht[idx_update] <= update_taken ? 2'b01 : 2'b00;
                    2'b01: bht[idx_update] <= update_taken ? 2'b10 : 2'b00;
                    2'b10: bht[idx_update] <= update_taken ? 2'b11 : 2'b01;
                    2'b11: bht[idx_update] <= update_taken ? 2'b11 : 2'b10;
                    default: bht[idx_update] <= 2'b01;
                endcase

                if (update_taken) begin
                    btb_v[idx_update]   <= 1'b1;
                    if (TAG_WIDTH > 0)
                        btb_tag[idx_update] <= tag_update;
                    btb_target[idx_update] <= update_target;
                end
            end
        end
    end

    logic btb_match;
    logic [1:0] counter_here;
    logic [TAG_WIDTH-1:0] tmp_tag;


    assign counter_here = bht[idx_fetch];
    generate
        if (TAG_WIDTH > 0) begin
            assign tmp_tag = btb_tag[idx_fetch];
            assign btb_match = btb_v[idx_fetch] && (tmp_tag == tag_fetch);
        end else begin
            assign btb_match = btb_v[idx_fetch];
        end
    endgenerate

    always_comb begin
        if (btb_match && (counter_here[1] == 1'b1)) begin
            direction = 1'b1;
            target = btb_target[idx_fetch];
        end else begin
            direction = 1'b0;
            target = PC + 32'd4;
        end
    end

endmodule