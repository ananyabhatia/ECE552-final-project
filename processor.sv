module processor(clock, reset);
    input logic clock;
    input logic reset;
    
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
        else if (!load_use_hazard)
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
        if (EX_mispredict) begin
            FD_PC <= 32'b0;
            FD_inst <= 32'b0;
            FD_prediction <= 1'b0;
            FD_target <= 32'b0;
        end
        else if (!load_use_hazard) begin
            FD_PC <= PC;
            FD_inst <= instruction;
            FD_prediction <= dir_pred;
            FD_target <= tar_pred;
        end
    end


    // ----------------DECODE-----------------
    logic [6:0] opcode;

    logic [6:0] func7;
    logic [2:0] func3;
    logic [4:0] rd, rs1, rs2;
    logic [31:0] imm_I, imm_S, imm_B, imm_U, imm_J;
    logic [3:0] ALUop;
    logic ALUinB, isABranch, RWE, isJal, isJalr, isAuipc, isLui, isStore, isLoad;
    always_comb begin
        opcode = FD_inst[6:0];
        func7 = FD_inst[31:25];
        func3 = FD_inst[14:12];
        rd = FD_inst[11:7];
        rs1 = FD_inst[19:15];
        rs2 = FD_inst[24:20];
        imm_I = {{20{FD_inst[31]}}, FD_inst[31:20]};
        imm_S = {{20{FD_inst[31]}}, FD_inst[31:25], FD_inst[11:7]};
        imm_B = {{19{FD_inst[31]}}, FD_inst[31], FD_inst[7], FD_inst[30:25], FD_inst[11:8], 1'b0};
        imm_U = {FD_inst[31:12], 12'b0};
        imm_J = {{11{FD_inst[31]}}, FD_inst[31], FD_inst[19:12], FD_inst[20], FD_inst[30:21], 1'b0};
    end
    logic [4:0] src1, src2, dest;
    setsourcedest set_src_dest(
        .opcode(opcode),
        .src1(rs1),
        .src2(rs2),
        .dest(rd),
        .out_src1(src1),
        .out_src2(src2),
        .out_dest(dest)
    );
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
        .isLui(isLui),
        .isStore(isStore),
        .isLoad(isLoad)
    );

    logic [31:0] data_readRegA, data_readRegB;
    regfile RegisterFile (
        .clock(clock),
        .ctrl_writeEnable(MW_RWE),
        .ctrl_reset(reset),
        .ctrl_writeReg(WB_destination),
        .ctrl_readRegA(src1),
        .ctrl_readRegB(src2),
        .data_writeReg(data_writeReg),
        .data_readRegA(data_readRegA),
        .data_readRegB(data_readRegB)
    );

    logic load_use_hazard;
    assign load_use_hazard = DX_isLoad &&
                  ((DX_rd != 5'b0) && 
                   ((DX_rd == src1) || (DX_rd == src2)));

    // ---------------------------------------

    logic [31:0] DX_inst, DX_PC, DX_imm, DX_dataA, DX_dataB, DX_immS, DX_immB, DX_immU, DX_immJ, DX_target;
    logic [3:0] DX_ALUop;
    logic [4:0] DX_rd;
    logic [4:0] DX_src1, DX_src2;
    logic [2:0] DX_func3;
    logic DX_ALUinB, DX_isABranch, DX_RWE, DX_isJal, DX_isJalr, DX_isAuipc, DX_isLui, DX_prediction;
    always_ff @(posedge clock) begin: DX_LATCH
        if (load_use_hazard || EX_mispredict) begin
            DX_PC <= DX_PC;
            DX_inst <= 32'b0; // insert bubble
            DX_imm <= 32'b0;
            DX_immS <= 32'b0;
            DX_immB <= 32'b0;
            DX_immU <= 32'b0;
            DX_immJ <= 32'b0;
            DX_dataA <= 32'b0;
            DX_dataB <= 32'b0;
            DX_ALUop <= 4'b0;
            DX_ALUinB <= 1'b0;
            DX_func3 <= 3'b0;
            DX_rd <= 5'b0;
            DX_src1 <= 5'b0;
            DX_src2 <= 5'b0;
            DX_isABranch <= 1'b0;
            DX_RWE <= 1'b0;
            DX_isJal <= 1'b0;
            DX_isJalr <= 1'b0;
            DX_isAuipc <= 1'b0;
            DX_isLui <= 1'b0;
            DX_isStore <= 1'b0;
            DX_isLoad <= 1'b0;
            DX_prediction <= 1'b0;
            DX_target <= 32'b0;
        end else begin
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
            DX_rd <= dest;
            DX_src1 <= src1;
            DX_src2 <= src2;
            DX_isABranch <= isABranch;
            DX_RWE <= RWE;
            DX_func3 <= func3;
            DX_isJal <= isJal;
            DX_isJalr <= isJalr;
            DX_isAuipc <= isAuipc;
            DX_isLui <= isLui;
            DX_isStore <= isStore;
            DX_isLoad <= isLoad;
            DX_prediction <= FD_prediction;
            DX_target <= FD_target;
        end
    end

    // ----------------EXECUTE-----------------
    logic [31:0] operandA, operandB;
    always_comb begin
        operandA = (forwardA == 2'b01) ? XM_ALURESULT :
                    (forwardA == 2'b10) ? data_writeReg :
                    DX_dataA;
        operandB = forwardB == 2'b01 ? XM_ALURESULT :
                    forwardB == 2'b10 ? data_writeReg :
                    DX_ALUinB ? DX_imm : 
                    DX_isStore ? DX_immS : DX_dataB;
    end

    logic [31:0] aluResult, branchTarget, jalTarget, jalrTarget, auipcResult, EX_target;
    logic taken, EX_mispredict;
    logic [1:0] pcSelect; // 00 is PC+4, 01 is branchTarget, 10 is jalTarget, 11 is jalrTarget
    alu ALU_unit (
        .operandA(operandA),
        .operandB(operandB),
        .ALUop(DX_ALUop),
        .result(aluResult),
        .branch(taken)
    );
    always_comb begin
        branchTarget = DX_PC + DX_immB;
        jalTarget = DX_PC + DX_immJ;
        jalrTarget = (operandA + DX_imm) & ~32'd1;
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
    logic [4:0] XM_src1, XM_src2;
    always_ff @(posedge clock) begin: XM_LATCH
        XM_PC <= DX_PC;
        XM_inst <= DX_inst;
        XM_imm <= DX_imm;
        XM_dataA <= DX_dataA;
        XM_dataB <= DX_dataB;
        XM_ALURESULT <= aluResult;
        XM_taken <= taken;
        XM_rd <= DX_rd;
        XM_src1 <= DX_src1;
        XM_src2 <= DX_src2;
        XM_isABranch <= DX_isABranch;
        XM_RWE <= DX_RWE;
        XM_isJal <= DX_isJal;
        XM_isJalr <= DX_isJalr;
        XM_isAuipc <= DX_isAuipc;
        XM_auipcResult <= auipcResult;
        XM_immU <= DX_immU;
        XM_isLui <= DX_isLui;
        XM_func3 <= DX_func3;
        XM_isLoad <= DX_isLoad;
        XM_isStore <= DX_isStore;
    end

    // ------------------MEMORY------------------

    logic [31:0] dataOut;
    logic [31:0] dataIn;
    assign dataIn = forwardC ? data_writeReg : XM_dataB;

    RAM_wrapper ProcMem(.clk(clock), 
		.wEn(XM_isStore), 
		.addr(XM_ALURESULT), 
		.dataIn(dataIn), 
        .func3(XM_func3),
		.dataOut(dataOut));

    // ------------------------------------------
    logic [31:0] MW_inst, MW_PC, MW_imm, MW_dataA, MW_dataB, MW_ALURESULT, MW_auipcResult, MW_immU, MW_dmemOut;
    logic MW_taken, MW_isABranch, MW_RWE, MW_isJal, MW_isJalr, MW_isAuipc, MW_isLui;
    logic [4:0] MW_rd;
    logic [4:0] MW_src1, MW_src2;

    always_ff @(posedge clock) begin: MW_LATCH
        MW_PC <= XM_PC;
        MW_inst <= XM_inst;
        MW_imm <= XM_imm;
        MW_dataA <= XM_dataA;
        MW_dataB <= XM_dataB;
        MW_ALURESULT <= XM_ALURESULT;
        MW_taken <= XM_taken;
        MW_rd <= XM_rd;
        MW_src1 <= XM_src1;
        MW_src2 <= XM_src2;
        MW_isABranch <= XM_isABranch;
        MW_RWE <= XM_RWE;
        MW_isJal <= XM_isJal;
        MW_isJalr <= XM_isJalr;
        MW_isAuipc <= XM_isAuipc;
        MW_auipcResult <= XM_auipcResult;
        MW_immU <= XM_immU;
        MW_isLui <= XM_isLui;
        MW_dmemOut <= dataOut;
        MW_isLoad <= XM_isLoad;
        MW_isStore <= XM_isStore;
    end

    // ------------------WRITEBACK----------------
    logic [4:0] WB_destination;

    logic [31:0] data_writeReg;
    assign WB_destination = MW_rd;
    always_comb begin
        data_writeReg = (MW_isJal | MW_isJalr) ? (MW_PC + 32'd4) :
                        MW_isAuipc ? MW_auipcResult : 
                        MW_isLui ? MW_immU :
                        MW_isLoad ? MW_dmemOut :
                        MW_ALURESULT;
    end


    // -----------------BYPASS-----------------
    // 00 is regular, 01 is from M, 10 is from W
    // forwardA is ALU operand A, forwardB is ALU operand B
    logic [1:0] forwardA, forwardB;
    // forward C is for store data
    logic forwardC;
    always_comb begin
        forwardA = (DX_src1 != 0 && DX_src1 == XM_rd && XM_RWE) ? 2'b01 :
                    (DX_src1 != 0 && DX_src1 == MW_rd && MW_RWE) ? 2'b10 :
                    2'b00;
        forwardB = (DX_src2 != 0 && DX_src2 == XM_rd && XM_RWE) ? 2'b01 :
                    (DX_src2 != 0 && DX_src2 == MW_rd && MW_RWE) ? 2'b10 :
                    2'b00;
        forwardC = (XM_src2 != 0 && XM_src2 == MW_rd && MW_RWE) ? 1'b1 : 1'b0;  
    end



endmodule