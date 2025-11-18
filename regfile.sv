module regfile (
    input  logic        clock,
    input  logic        ctrl_reset,


    input  logic        A_ctrl_writeEnable,
    input  logic [4:0]  A_ctrl_writeReg,
    input  logic [4:0]  A_ctrl_readReg1,
    input  logic [4:0]  A_ctrl_readReg2,
    input  logic [31:0] A_data_writeReg,
    output logic [31:0] A_data_readReg1,
    output logic [31:0] A_data_readReg2,

    input  logic        B_ctrl_writeEnable,
    input  logic [4:0]  B_ctrl_writeReg,
    input  logic [4:0]  B_ctrl_readReg1,
    input  logic [4:0]  B_ctrl_readReg2,
    input  logic [31:0] B_data_writeReg,
    output logic [31:0] B_data_readReg1,
    output logic [31:0] B_data_readReg2
);
    logic [31:0] regs [31:0];

    // synchronous write with reset
    always_ff @(posedge clock) begin
        if (ctrl_reset) begin
            for (int i = 0; i < 32; i++)
                regs[i] <= 32'b0;
        end 
        else begin 
            if (A_ctrl_writeEnable && A_ctrl_writeReg != 0)
                regs[A_ctrl_writeReg] <= A_data_writeReg;
            if (B_ctrl_writeEnable && B_ctrl_writeReg != 0)
                regs[B_ctrl_writeReg] <= B_data_writeReg;
        end
    end

    // combinational reads
    always_comb begin
        A_data_readReg1 = (A_ctrl_readReg1 == 0) ? 32'b0 : regs[A_ctrl_readReg1];
        A_data_readReg2 = (A_ctrl_readReg2 == 0) ? 32'b0 : regs[A_ctrl_readReg2];
        B_data_readReg1 = (B_ctrl_readReg1 == 0) ? 32'b0 : regs[B_ctrl_readReg1];
        B_data_readReg2 = (B_ctrl_readReg2 == 0) ? 32'b0 : regs[B_ctrl_readReg2];
    end

endmodule
