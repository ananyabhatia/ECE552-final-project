module regfile (
    input  logic        clock,
    input  logic        ctrl_writeEnable,
    input  logic        ctrl_reset,
    input  logic [4:0]  ctrl_writeReg,
    input  logic [4:0]  ctrl_readRegA,
    input  logic [4:0]  ctrl_readRegB,
    input  logic [31:0] data_writeReg,
    output logic [31:0] data_readRegA,
    output logic [31:0] data_readRegB
);
    logic [31:0] regs [31:0];

    // synchronous write with reset
    always_ff @(posedge clock) begin
        if (ctrl_reset)
            for (int i = 0; i < 32; i++)
                regs[i] <= 32'b0;
        else if (ctrl_writeEnable && ctrl_writeReg != 0)
            regs[ctrl_writeReg] <= data_writeReg;
    end

    // combinational reads
    always_comb begin
        data_readRegA = (ctrl_readRegA == 0) ? 32'b0 : regs[ctrl_readRegA];
        data_readRegB = (ctrl_readRegB == 0) ? 32'b0 : regs[ctrl_readRegB];
    end

endmodule
