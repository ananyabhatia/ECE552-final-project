module control(opcode, func3, func7, ALUop, ALUinB, isABranch, RWE, isJal, isJalr, isAuipc, isLui, isStore, isLoad);
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
    output logic isStore; 
    output logic isLoad;

    logic load;
    logic store;
    logic useFunc7;
    always_comb begin
        useFunc7 = opcode == 7'b0110011 || (opcode == 7'b0010011 && (func3 == 3'b101 || func3 == 3'b001));
        isLoad = !opcode[6] & !opcode[5] & !opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        isStore = !opcode[6] & opcode[5] & !opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        ALUop = (isLoad | isStore) ? 4'b0000 : {useFunc7 ? func7[5] : 1'b0, func3};
        ALUinB = !opcode[6] & !opcode[5] & opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        isABranch = opcode[6] & opcode[5] & !opcode[4] & !opcode[3] & !opcode[2] & opcode[1] & opcode[0];
        RWE = (!isABranch & !isStore);
        isJal = opcode[6] & opcode[5] & !opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0];
        isJalr = opcode[6] & opcode[5] & !opcode[4] & !opcode[3] & opcode[2] & opcode[1] & opcode[0];
        isAuipc = !opcode[6] & !opcode[5] & opcode[4] & !opcode[3] & opcode[2] & opcode[1] & opcode[0];
        isLui = !opcode[6] & opcode[5] & opcode[4] & !opcode[3] & opcode[2] & opcode[1] & opcode[0];
    end
    
endmodule
