module processor(clock, instruction, dataToWrite, reset);
    input logic clock;
    input logic reset;
    output logic [31:0] dataToWrite;

    
    // ----------------FETCH-----------------
    logic [31:0] instruction;

    logic [31:0] PC, PCplus4, nextPC, tar_pred;
    logic dir_pred;
    always_comb begin: fetch_comb
        PCplus4 = PC + 32'd4;
        if (dir_pred)
            nextPC = tar_pred;
        else
            nextPC = pcSelect == 2'b00 ? PCplus4 :
                    pcSelect == 2'b10 ? jalTarget :
                    pcSelect == 2'b11 ? jalrTarget :
                    PCplus4; // default to PC+4
        if (EX_mispredict) begin
            nextPC = EX_target;
        end
    end

    always_ff @(posedge clock or posedge reset) begin: fetch_ff
        if (reset)
            PC <= 32'b0;
        else
            PC <= nextPC;
    end
    bp branch_predictor(
        .PC(PC),
        .direction(dir_pred),
        .target(tar_pred),
        .clock(clock)
    );

    ROM #(.MEMFILE({DIR, MEM_DIR, FILE, ".mem"}))
	InstMem(.clk(clock), 
		.addr(PC[17:2]), 
		.dataOut(instruction));

    // ---------------------------------------

    logic [31:0] FD_inst, FD_PC, FD_target;
    logic FD_prediction;
    always_ff @(posedge clock) begin: FD_LATCH
        FD_PC <= PC;
        FD_inst <= instruction;
        FD_prediction <= dir_pred;
        FD_target <= tar_pred;
    end


    // ----------------DECODE-----------------
    logic [6:0] opcode;

    logic [6:0] func7;
    logic [2:0] func3;
    logic [4:0] rd, rs1, rs2;
    logic [31:0] imm_I, imm_S, imm_B, imm_U, imm_J;
    logic [3:0] ALUop;
    logic ALUinB, isABranch, RWE, isJal, isJalr, isAuipc, isLui;
    always_comb begin
        opcode = FD_inst[6:0];
        func7 = FD_inst[31:25];
        func3 = FD_inst[14:12];
        rd = FD_inst[11:7];
        rs1 = FD_inst[19:15];
        rs2 = FD_inst[24:20];
        imm_I = {{20{FD_inst[31]}}, FD_inst[31:20]};
        imm_S = {{20{FD_inst[31]}}, FD_inst[31:25], FD_inst[11:7]};
        imm_B = {{19{FD_inst[31]}}, FD_inst[7], FD_inst[30:25], FD_inst[11:8], 1'b0};
        imm_U = {FD_inst[31:12], 12'b0};
        imm_J = {{11{FD_inst[31]}}, FD_inst[19:12], FD_inst[20], FD_inst[30:21], 1'b0};
    end
    control control_unit(
        .opcode(opcode), 
        .func3(func3), 
        .func7(func7), 
        .ALUop(ALUop), 
        .ALUinB(ALUinB),
        .isABranch(isABranch),
        .RWE(RWE),
        .isJal(isJal),
        .isJalr(isJalr),
        .isAuipc(isAuipc),
        .isLui(isLui)
    );

    logic [31:0] data_readRegA, data_readRegB, operandB;
    regfile RegisterFile (
        .clock(clock),
        .ctrl_writeEnable(MW_RWE),
        .ctrl_reset(reset),
        .ctrl_writeReg(WB_destination),
        .ctrl_readRegA(rs1),
        .ctrl_readRegB(rs2),
        .data_writeReg(data_writeReg),
        .data_readRegA(data_readRegA),
        .data_readRegB(data_readRegB)
    );

    // ---------------------------------------

    logic [31:0] DX_inst, DX_PC, DX_imm, DX_dataA, DX_dataB, DX_immS, DX_immB, DX_immU, DX_immJ, DX_target;
    logic [3:0] DX_ALUop;
    logic [4:0] DX_rd;
    logic [2:0] func3;
    logic DX_ALUinB, DX_isABranch, DX_RWE, DX_isJal, DX_isJalr, DX_isAuipc, DX_isLui, DX_prediction;
    always_ff @(posedge clock) begin: DX_LATCH
        DX_PC <= FD_PC;
        DX_inst <= FD_inst;
        DX_imm <= imm_I;
        DX_immS <= imm_S;
        DX_immB <= imm_B;
        DX_immU <= imm_U;
        DX_immJ <= imm_J;
        DX_dataA <= data_readRegA;
        DX_dataB <= data_readRegB;
        DX_ALUop <= ALUop;
        DX_ALUinB <= ALUinB;
        DX_rd <= rd;
        DX_isABranch <= isABranch;
        DX_RWE <= RWE;
        DX_func3 <= func3;
        DX_isJal <= isJal;
        DX_isJalr <= isJalr;
        DX_isAuipc <= isAuipc;
        DX_isLui <= isLui;
        DX_prediction <= FD_prediction;
        DX_target <= FD_target;
    end

    // ----------------EXECUTE-----------------

    assign operandB = DX_ALUinB ? DX_imm : DX_dataB;
    logic [31:0] aluResult, branchTarget, jalTarget, jalrTarget, auipcResult, EX_target;
    logic taken, EX_mispredict;
    logic [1:0] pcSelect; // 00 is PC+4, 01 is branchTarget, 10 is jalTarget, 11 is jalrTarget
    alu ALU_unit (
        .operandA(DX_dataA),
        .operandB(operandB),
        .ALUop(DX_ALUop),
        .result(aluResult),
        .branch(taken)
    );
    always_comb begin
        branchTarget = DX_PC + DX_immB;
        jalTarget = DX_PC + DX_immJ;
        jalrTarget = (DX_dataA + DX_imm) & ~32'd1;
        auipcResult = DX_PC + DX_immU;
        if (DX_isABranch && (DX_prediction != taken)) begin
            EX_mispredict = 1'b1;
            EX_target = taken ? branchTarget : (DX_PC + 32'd4);
        end else begin
            EX_mispredict = 1'b0;
            EX_target = 32'b0;
        end
        if (DX_isJal)
            pcSelect = 2'b10; 
        else if (DX_isJalr)
            pcSelect = 2'b11;
        else
            pcSelect = 2'b00;
        
    end
    // ---------------------------------------
    logic [31:0] XM_inst, XM_PC, XM_imm, XM_dataA, XM_dataB, XM_ALURESULT, XM_auipcResult, XM_immU;
    logic XM_taken, XM_isABranch, XM_RWE, XM_isLui, XM_isJal, XM_isJalr, XM_isAuipc;
    logic [4:0] XM_rd;
    logic [2:0] XM_func3;

    always_ff @(posedge clock) begin: XM_LATCH
        XM_PC <= DX_PC;
        XM_inst <= DX_inst;
        XM_imm <= DX_imm;
        XM_dataA <= DX_dataA;
        XM_dataB <= DX_dataB;
        XM_ALURESULT <= aluResult;
        XM_taken <= taken;
        XM_rd <= DX_rd;
        XM_isABranch <= DX_isABranch;
        XM_RWE <= DX_RWE;
        XM_isJal <= DX_isJal;
        XM_isJalr <= DX_isJalr;
        XM_isAuipc <= DX_isAuipc;
        XM_auipcResult <= auipcResult;
        XM_immU <= DX_immU;
        XM_isLui <= DX_isLui;
        XM_func3 <= DX_func3;
    end

    // ------------------MEMORY------------------

    logic isStore;
    assign isStore = (XM_inst[6:0] == 7'b0100011) ? 1'b1 : 1'b0;
    logic [31:0] dataOut;

    RAM_wrapper ProcMem(.clk(clock), 
		.wEn(isStore), 
		.addr(XM_ALURESULT), 
		.dataIn(XM_dataB), 
        .func3(XM_func3),
		.dataOut(dataOut));

    // ------------------------------------------
    logic [31:0] MW_inst, MW_PC, MW_imm, MW_dataA, MW_dataB, MW_ALURESULT, MW_auipcResult, MW_immU, MW_dmemOut;
    logic MW_taken, MW_isABranch, MW_RWE, MW_isJal, MW_isJalr, MW_isAuipc, MW_isLui;
    logic [4:0] MW_rd;

    always_ff @(posedge clock) begin: MW_LATCH
        MW_PC <= XM_PC;
        MW_inst <= XM_inst;
        MW_imm <= XM_imm;
        MW_dataA <= XM_dataA;
        MW_dataB <= XM_dataB;
        MW_ALURESULT <= XM_ALURESULT;
        MW_taken <= XM_taken;
        MW_rd <= XM_rd;
        MW_isABranch <= XM_isABranch;
        MW_RWE <= XM_RWE;
        MW_isJal <= XM_isJal;
        MW_isJalr <= XM_isJalr;
        MW_isAuipc <= XM_isAuipc;
        MW_auipcResult <= XM_auipcResult;
        MW_immU <= XM_immU;
        MW_isLui <= XM_isLui;
        MW_dmemOut <= dataOut;
    end

    // ------------------WRITEBACK----------------
    logic [4:0] WB_destination;
    logic isLoad;
    assign isLoad = (MW_inst[6:0] == 7'b0000011) ? 1'b1 : 1'b0;
    logic [31:0] data_writeReg;
    assign WB_destination = MW_rd;
    always_comb begin
        data_writeReg = (MW_isJal | MW_isJalr) ? (MW_PC + 32'd4) :
                        MW_isAuipc ? MW_auipcResult : 
                        MW_isLui ? MW_immU :
                        MW_ALURESULT;
        dataToWrite = isLoad ? MW_dmemOut : data_writeReg;
    end

endmodule