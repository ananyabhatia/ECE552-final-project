module control(opcode, func3, func7, ALUop, ALUinB, isABranch, RWE);
    input logic [6:0] opcode;
    input logic [2:0] func3;
    input logic [6:0] func7;

    output logic [3:0] ALUop;
    output logic ALUinB;
    output logic isABranch;
    output logic RWE;
    output logic isJal;
    output logic isJalr;
    output logic isAuipc;
    output logic isLui;

    logic load;
    logic store;
    always_comb begin
        load = !opcode[6] & !opcode[5] & !opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        store = !opcode[6] & opcode[5] & !opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        ALUop = (load | store) ? 4'b0000 : {func7[5], func3};
        ALUinB = !opcode[6] & !opcode[5] & opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        isABranch = opcode[6] & opcode[5] & !opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        RWE = (!isABranch & !store);
        isJal = opcode[6] & opcode[5] & !opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0];
        isJalr = opcode[6] & opcode[5] & !opcode[4] & !opcode[3] & opcode[2] & opcode[1] & opcode[0];
        isAuipc = !opcode[6] & !opcode[5] & opcode[4] & !opcode[3] & opcode[2] & opcode[1] & opcode[0];
        isLui = !opcode[6] & opcode[5] & opcode[4] & !opcode[3] & opcode[2] & opcode[1] & opcode[0];
    end
    
endmodule
