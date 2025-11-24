module control(
    input logic [6:0] A_opcode,
    input logic [2:0] A_func3,
    input logic [6:0] A_func7,
    output logic [3:0] A_ALUop,
    output logic A_ALUinB,
    output logic A_isABranch,
    output logic A_RWE,
    output logic A_isJal,
    output logic A_isJalr,
    output logic A_isAuipc,
    output logic A_isLui,
    output logic A_isStore,
    output logic A_isLoad,
    input logic [6:0] B_opcode,
    input logic [2:0] B_func3,
    input logic [6:0] B_func7,
    output logic [3:0] B_ALUop,
    output logic B_ALUinB,
    output logic B_isABranch,
    output logic B_RWE,
    output logic B_isJal,
    output logic B_isJalr,
    output logic B_isAuipc,
    output logic B_isLui,
    output logic B_isStore,
    output logic B_isLoad
);

    logic A_load;
    logic A_store;
    logic A_useFunc7;

    logic B_load;
    logic B_store;
    logic B_useFunc7;
    // A_MW_inst[6:0] == 7'b0001011 || B_MW_inst[6:0] == 7'b0001011
    always_comb begin
        A_useFunc7 = A_opcode == 7'b0110011 || (A_opcode == 7'b0010011 && (A_func3 == 3'b101 || A_func3 == 3'b001));
        A_isLoad = !A_opcode[6] & !A_opcode[5] & !A_opcode[4] & !A_opcode[3] & !A_opcode[2] & A_opcode[1] & A_opcode[0];
        A_isStore = !A_opcode[6] & A_opcode[5] & !A_opcode[4] & !A_opcode[3] & !A_opcode[2] & A_opcode[1] & A_opcode[0];
        A_ALUop = (A_isLoad | A_isStore) ? 4'b0000 : {A_useFunc7 ? A_func7[5] : 1'b0, A_func3};
        A_ALUinB = A_isLoad || (!A_opcode[6] & !A_opcode[5] & A_opcode[4] & !A_opcode[3] & !A_opcode[2] & A_opcode[1] & A_opcode[0]);
        A_isABranch = A_opcode[6] & A_opcode[5] & !A_opcode[4] & !A_opcode[3] & !A_opcode[2] & A_opcode[1] & A_opcode[0];
        A_isHalt = !A_opcode[6] & !A_opcode[5] & !A_opcode[4] & A_opcode[3] & !A_opcode[2] & A_opcode[1] & A_opcode[0];
        A_RWE = (!A_isABranch & !A_isStore & !A_isHalt);
        A_isJal = A_opcode[6] & A_opcode[5] & !A_opcode[4] & A_opcode[3] & A_opcode[2] & A_opcode[1] & A_opcode[0];
        A_isJalr = A_opcode[6] & A_opcode[5] & !A_opcode[4] & !A_opcode[3] & A_opcode[2] & A_opcode[1] & A_opcode[0];
        A_isAuipc = !A_opcode[6] & !A_opcode[5] & A_opcode[4] & !A_opcode[3] & A_opcode[2] & A_opcode[1] & A_opcode[0];
        A_isLui = !A_opcode[6] & A_opcode[5] & A_opcode[4] & !A_opcode[3] & A_opcode[2] & A_opcode[1] & A_opcode[0];

        B_useFunc7 = B_opcode == 7'b0110011 || (B_opcode == 7'b0010011 && (B_func3 == 3'b101 || B_func3 == 3'b001));
        B_isLoad = !B_opcode[6] & !B_opcode[5] & !B_opcode[4] & !B_opcode[3] & !B_opcode[2] & B_opcode[1] & B_opcode[0];
        B_isStore = !B_opcode[6] & B_opcode[5] & !B_opcode[4] & !B_opcode[3] & !B_opcode[2] & B_opcode[1] & B_opcode[0];
        B_ALUop = (B_isLoad | B_isStore) ? 4'b0000 : {B_useFunc7 ? B_func7[5] : 1'b0, B_func3};
        B_ALUinB = B_isLoad || (!B_opcode[6] & !B_opcode[5] & B_opcode[4] & !B_opcode[3] & !B_opcode[2] & B_opcode[1] & B_opcode[0]);
        B_isABranch = B_opcode[6] & B_opcode[5] & !B_opcode[4] & !B_opcode[3] & !B_opcode[2] & B_opcode[1] & B_opcode[0];
        B_isHalt = !B_opcode[6] & !B_opcode[5] & !B_opcode[4] & B_opcode[3] & !B_opcode[2] & B_opcode[1] & B_opcode[0];
        B_RWE = (!B_isABranch & !B_isStore & !B_isHalt);
        B_isJal = B_opcode[6] & B_opcode[5] & !B_opcode[4] & B_opcode[3] & B_opcode[2] & B_opcode[1] & B_opcode[0];
        B_isJalr = B_opcode[6] & B_opcode[5] & !B_opcode[4] & !B_opcode[3] & B_opcode[2] & B_opcode[1] & B_opcode[0];
        B_isAuipc = !B_opcode[6] & !B_opcode[5] & B_opcode[4] & !B_opcode[3] & B_opcode[2] & B_opcode[1] & B_opcode[0];
        B_isLui = !B_opcode[6] & B_opcode[5] & B_opcode[4] & !B_opcode[3] & B_opcode[2] & B_opcode[1] & B_opcode[0];
    end
    
endmodule
