module processor(clock, reset);
    input logic clock;
    input logic reset;
    
    // ----------------FETCH-----------------

    localparam NOP = 32'h00000013; // addi x0,x0,0

    logic [31:0] A_instruction, B_instruction;

    logic [31:0] PC, PCplus4, PCplus8, nextPC, tar_pred;
    logic dir_pred;
    logic [6:0] opcodeA, opcodeB;
    logic isCtrlA, isCtrlB;


    always_comb begin: fetch_comb
        PCplus4 = PC + 32'd4;
        PCplus8 = PC + 32'd8;
        nextPC = PCplus8;
        opcodeA = A_instruction[6:0];
        opcodeB = B_instruction[6:0];
        isCtrlA = 1'b0;
        isCtrlB = 1'b0;

        isCtrlA = (opcodeA == 7'b1100011) || // branch
                 (opcodeA == 7'b1101111) || // jal
                 (opcodeA == 7'b1100111) || // jalr
                 (opcodeA == 7'b0010111); // auipc   
        isCtrlB = (opcodeB == 7'b1100011) || // branch
                 (opcodeB == 7'b1101111) || // jal
                 (opcodeB == 7'b1100111) || // jalr
                 (opcodeB == 7'b0010111); // auipc   
        
        if (isCtrlA)
            nextPC = PCplus4;
        if (dir_pred)
            nextPC = tar_pred;
        if (EX_mispredict) 
            nextPC = EX_target;
    end

    
    always_ff @(negedge clock or posedge reset) begin: program_counter
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

    ROM #(.MEMFILE("jal.mem"))
	InstMem(.clk(clock), 
		.addrA(PC[17:2]), 
		.dataOutA(A_instruction),
        .addrB(PC[17:2] + 16'b1),
        .dataOutB(B_instruction));

    // ---------------------------------------

    logic [31:0] A_FD_inst, B_FD_inst, A_FD_PC, B_FD_PC, FD_target;
    logic FD_prediction;

    always_ff @(negedge clock or posedge reset) begin: FD_LATCH
        if (EX_mispredict || reset) begin
            A_FD_PC <= 32'b0;
            B_FD_PC <= 32'b0;
            A_FD_inst <= 32'b0;
            B_FD_inst <= 32'b0;
            FD_prediction <= 1'b0;
            FD_target <= 32'b0;
        end
        else if (!load_use_hazard) begin
            A_FD_PC <= PC;
            B_FD_PC <= PCplus4;

            if (isCtrlA) begin
                A_FD_inst <= NOP;            // kill A (can’t go before control)
                B_FD_inst <= A_instruction;  // place the control in slot B
            end else begin
                A_FD_inst <= A_instruction;  // normal dual issue
                B_FD_inst <= B_instruction;
            end
            FD_prediction <= dir_pred;
            FD_target <= tar_pred;
        end
    end


    // ----------------DECODE-----------------
    logic [6:0] A_opcode, B_opcode;

    logic [6:0] A_func7, B_func7;
    logic [2:0] A_func3, B_func3;
    logic [4:0] A_rd, A_rs1, A_rs2;
    logic [31:0] A_imm_I, A_imm_S, A_imm_B, A_imm_U, A_imm_J;
    logic [4:0] B_rd, B_rs1, B_rs2;
    logic [31:0] B_imm_I, B_imm_S, B_imm_B, B_imm_U, B_imm_J;

    always_comb begin
        A_opcode = A_FD_inst[6:0];
        A_func7 = A_FD_inst[31:25];
        A_func3 = A_FD_inst[14:12];
        A_rd = A_FD_inst[11:7];
        A_rs1 = A_FD_inst[19:15];
        A_rs2 = A_FD_inst[24:20];
        A_imm_I = {{20{A_FD_inst[31]}}, A_FD_inst[31:20]};
        A_imm_S = {{20{A_FD_inst[31]}}, A_FD_inst[31:25], A_FD_inst[11:7]};
        A_imm_B = {{19{A_FD_inst[31]}}, A_FD_inst[31], A_FD_inst[7], A_FD_inst[30:25], A_FD_inst[11:8], 1'b0};
        A_imm_U = {A_FD_inst[31:12], 12'b0};
        A_imm_J = {{11{A_FD_inst[31]}}, A_FD_inst[31], A_FD_inst[19:12], A_FD_inst[20], A_FD_inst[30:21], 1'b0};

        B_opcode = B_FD_inst[6:0];
        B_func7 = B_FD_inst[31:25];
        B_func3 = B_FD_inst[14:12];
        B_rd = B_FD_inst[11:7];
        B_rs1 = B_FD_inst[19:15];
        B_rs2 = B_FD_inst[24:20];
        B_imm_I = {{20{B_FD_inst[31]}}, B_FD_inst[31:20]};
        B_imm_S = {{20{B_FD_inst[31]}}, B_FD_inst[31:25], B_FD_inst[11:7]};
        B_imm_B = {{19{B_FD_inst[31]}}, B_FD_inst[31], B_FD_inst[7], B_FD_inst[30:25], B_FD_inst[11:8], 1'b0};
        B_imm_U = {B_FD_inst[31:12], 12'b0};
        B_imm_J = {{11{B_FD_inst[31]}}, B_FD_inst[31], B_FD_inst[19:12], B_FD_inst[20], B_FD_inst[30:21], 1'b0};
    end
    logic [4:0] A_src1, A_src2, A_dest;
    logic [4:0] B_src1, B_src2, B_dest;
    setsourcedest set_src_dest(
        .A_opcode(A_opcode),
        .A_src1(A_rs1),
        .A_src2(A_rs2),
        .A_dest(A_rd),
        .A_out_src1(A_src1),
        .A_out_src2(A_src2),
        .A_out_dest(A_dest),
        .B_opcode(B_opcode),
        .B_src1(B_rs1),
        .B_src2(B_rs2),
        .B_dest(B_rd),
        .B_out_src1(B_src1),
        .B_out_src2(B_src2),
        .B_out_dest(B_dest)
    );
    logic [3:0] A_ALUop;
    logic A_ALUinB, A_isABranch, A_RWE, A_isJal, A_isJalr, A_isAuipc, A_isLui, A_isStore, A_isLoad;
    logic [3:0] B_ALUop;
    logic B_ALUinB, B_isABranch, B_RWE, B_isJal, B_isJalr, B_isAuipc, B_isLui, B_isStore, B_isLoad;
    control control_unit(
        .A_opcode(A_opcode), 
        .A_func3(A_func3), 
        .A_func7(A_func7), 
        .A_ALUop(A_ALUop), 
        .A_ALUinB(A_ALUinB),
        .A_isABranch(A_isABranch),
        .A_RWE(A_RWE),
        .A_isJal(A_isJal),
        .A_isJalr(A_isJalr),
        .A_isAuipc(A_isAuipc),
        .A_isLui(A_isLui),
        .A_isStore(A_isStore),
        .A_isLoad(A_isLoad),
        .B_opcode(B_opcode),
        .B_func3(B_func3),
        .B_func7(B_func7),
        .B_ALUop(B_ALUop),
        .B_ALUinB(B_ALUinB),
        .B_isABranch(B_isABranch),
        .B_RWE(B_RWE),
        .B_isJal(B_isJal),
        .B_isJalr(B_isJalr),
        .B_isAuipc(B_isAuipc),
        .B_isLui(B_isLui),
        .B_isStore(B_isStore),
        .B_isLoad(B_isLoad)
    );

    logic [31:0] A_data_readReg1, A_data_readReg2;
    logic [31:0] B_data_readReg1, B_data_readReg2;
    regfile RegisterFile (
        .clock(clock),
        .ctrl_reset(reset),
        .A_ctrl_writeEnable(A_MW_RWE),
        .A_ctrl_writeReg(A_WB_destination),
        .A_ctrl_readReg1(A_src1),
        .A_ctrl_readReg2(A_src2),
        .A_data_writeReg(A_data_writeReg),
        .A_data_readReg1(A_data_readReg1),
        .A_data_readReg2(A_data_readReg2),
        .B_ctrl_writeEnable(B_MW_RWE),
        .B_ctrl_writeReg(B_WB_destination),
        .B_ctrl_readReg1(B_src1),
        .B_ctrl_readReg2(B_src2),
        .B_data_writeReg(B_data_writeReg),
        .B_data_readReg1(B_data_readReg1),
        .B_data_readReg2(B_data_readReg2)
    );

    // TODO
    logic load_use_hazard;
    assign load_use_hazard = DX_isLoad &&
                  ((DX_rd != 5'b0) && 
                   ((DX_rd == src1) || (DX_rd == src2)));

    // ---------------------------------------

    logic [31:0] A_DX_inst, A_DX_PC, A_DX_imm, A_DX_dataA, A_DX_dataB, A_DX_immS, A_DX_immB, A_DX_immU, A_DX_immJ, A_DX_target;
    logic [3:0] A_DX_ALUop;
    logic [4:0] A_DX_rd;
    logic [4:0] A_DX_src1, A_DX_src2;
    logic [2:0] A_DX_func3;
    logic A_DX_ALUinB, A_DX_isABranch, A_DX_RWE, A_DX_isJal, A_DX_isJalr, A_DX_isAuipc, A_DX_isLui, A_DX_prediction, A_DX_isStore, A_DX_isLoad;

    logic [31:0] B_DX_inst, B_DX_PC, B_DX_imm, B_DX_dataA, B_DX_dataB, B_DX_immS, B_DX_immB, B_DX_immU, B_DX_immJ, B_DX_target;
    logic [3:0] B_DX_ALUop;
    logic [4:0] B_DX_rd;
    logic [4:0] B_DX_src1, B_DX_src2;
    logic [2:0] B_DX_func3;
    logic B_DX_ALUinB, B_DX_isABranch, B_DX_RWE, B_DX_isJal, B_DX_isJalr, B_DX_isAuipc, B_DX_isLui, B_DX_prediction, B_DX_isStore, B_DX_isLoad;
    always_ff @(negedge clock or posedge reset) begin: DX_LATCH
        if (load_use_hazard || EX_mispredict || reset) begin
            A_DX_PC <= A_DX_PC;
            A_DX_inst <= 32'b0; // insert bubble
            A_DX_imm <= 32'b0;
            A_DX_immS <= 32'b0;
            A_DX_immB <= 32'b0;
            A_DX_immU <= 32'b0;
            A_DX_immJ <= 32'b0;
            A_DX_dataA <= 32'b0;
            A_DX_dataB <= 32'b0;
            A_DX_ALUop <= 4'b0;
            A_DX_ALUinB <= 1'b0;
            A_DX_func3 <= 3'b0;
            A_DX_rd <= 5'b0;
            A_DX_src1 <= 5'b0;
            A_DX_src2 <= 5'b0;
            A_DX_isABranch <= 1'b0;
            A_DX_RWE <= 1'b0;
            A_DX_isJal <= 1'b0;
            A_DX_isJalr <= 1'b0;
            A_DX_isAuipc <= 1'b0;
            A_DX_isLui <= 1'b0;
            A_DX_isStore <= 1'b0;
            A_DX_isLoad <= 1'b0;
            A_DX_prediction <= 1'b0;
            A_DX_target <= 32'b0;

            B_DX_PC <= B_DX_PC;
            B_DX_inst <= 32'b0; // insert bubble
            B_DX_imm <= 32'b0;
            B_DX_immS <= 32'b0;
            B_DX_immB <= 32'b0;
            B_DX_immU <= 32'b0;
            B_DX_immJ <= 32'b0;
            B_DX_dataA <= 32'b0;
            B_DX_dataB <= 32'b0;
            B_DX_ALUop <= 4'b0;
            B_DX_ALUinB <= 1'b0;
            B_DX_func3 <= 3'b0;
            B_DX_rd <= 5'b0;
            B_DX_src1 <= 5'b0;
            B_DX_src2 <= 5'b0;
            B_DX_isABranch <= 1'b0;
            B_DX_RWE <= 1'b0;
            B_DX_isJal <= 1'b0;
            B_DX_isJalr <= 1'b0;
            B_DX_isAuipc <= 1'b0;
            B_DX_isLui <= 1'b0;
            B_DX_isStore <= 1'b0;
            B_DX_isLoad <= 1'b0;
            B_DX_prediction <= 1'b0;
            B_DX_target <= 32'b0;
        end else begin
            A_DX_PC <= A_FD_PC;
            A_DX_inst <= A_FD_inst;
            A_DX_imm <= A_imm_I;
            A_DX_immS <= A_imm_S;
            A_DX_immB <= A_imm_B;
            A_DX_immU <= A_imm_U;
            A_DX_immJ <= A_imm_J;
            A_DX_dataA <= A_data_readReg1;
            A_DX_dataB <= A_data_readReg2;
            A_DX_ALUop <= A_ALUop;
            A_DX_ALUinB <= A_ALUinB;
            A_DX_rd <= A_dest;
            A_DX_src1 <= A_src1;
            A_DX_src2 <= A_src2;
            A_DX_isABranch <= A_isABranch;
            A_DX_RWE <= A_RWE;
            A_DX_func3 <= A_func3;
            A_DX_isJal <= A_isJal;
            A_DX_isJalr <= A_isJalr;
            A_DX_isAuipc <= A_isAuipc;
            A_DX_isLui <= A_isLui;
            A_DX_isStore <= A_isStore;
            A_DX_isLoad <= A_isLoad;
            A_DX_prediction <= FD_prediction;
            A_DX_target <= FD_target;

            B_DX_PC <= B_FD_PC;
            B_DX_inst <= B_FD_inst;
            B_DX_imm <= B_imm_I;
            B_DX_immS <= B_imm_S;
            B_DX_immB <= B_imm_B;
            B_DX_immU <= B_imm_U;
            B_DX_immJ <= B_imm_J;
            B_DX_dataA <= B_data_readReg1;
            B_DX_dataB <= B_data_readReg2;
            B_DX_ALUop <= B_ALUop;
            B_DX_ALUinB <= B_ALUinB;
            B_DX_rd <= B_dest;
            B_DX_src1 <= B_src1;
            B_DX_src2 <= B_src2;
            B_DX_isABranch <= B_isABranch;
            B_DX_RWE <= B_RWE;
            B_DX_func3 <= B_func3;
            B_DX_isJal <= B_isJal;
            B_DX_isJalr <= B_isJalr;
            B_DX_isAuipc <= B_isAuipc;
            B_DX_isLui <= B_isLui;
            B_DX_isStore <= B_isStore;
            B_DX_isLoad <= B_isLoad;
            B_DX_prediction <= FD_prediction;
            B_DX_target <= FD_target;
        end
    end

    // ----------------EXECUTE-----------------
    logic [31:0] A_operand1, A_operand2;
    logic [31:0] B_operand1, B_operand2;

    // TODO: add forwarding logic
    always_comb begin
        A_operand1 = (forwardA == 2'b01) ? XM_ALURESULT :
                    (forwardA == 2'b10) ? data_writeReg :
                    DX_dataA;
        A_operand2 = DX_ALUinB   ? DX_imm :
                    DX_isStore  ? DX_immS :
                    forwardB == 2'b01 ? XM_ALURESULT :
                    forwardB == 2'b10 ? data_writeReg :
                    DX_dataB;
        B_operand1 = (forwardA == 2'b01) ? XM_ALURESULT :
                    (forwardA == 2'b10) ? data_writeReg :
                    DX_dataA;
        B_operand2 = DX_ALUinB   ? DX_imm :
                    DX_isStore  ? DX_immS :
                    forwardB == 2'b01 ? XM_ALURESULT :
                    forwardB == 2'b10 ? data_writeReg :
                    DX_dataB;

    end

    logic [31:0] A_aluResult, A_branchTarget, A_jalTarget, A_jalrTarget, A_auipcResult, A_EX_target;
    logic [31:0] B_aluResult, B_branchTarget, B_jalTarget, B_jalrTarget, B_auipcResult, B_EX_target;
    logic taken, EX_mispredict;
    logic [1:0] pcSelect; // 00 is PC+4, 01 is branchTarget, 10 is jalTarget, 11 is jalrTarget
    alu ALU_unit_A (
        .operandA(A_operand1),
        .operandB(A_operand2),
        .ALUop(A_DX_ALUop),
        .result(A_aluResult),
        .branch(taken)
    );
    logic trash;
    alu ALU_unit_B (
        .operandA(B_operand1),
        .operandB(B_operand2),
        .ALUop(B_DX_ALUop),
        .result(B_aluResult),
        .branch(trash)
    );
    always_comb begin
        branchTarget = B_DX_PC + B_DX_immB;
        jalTarget = B_DX_PC + B_DX_immJ;
        jalrTarget = (B_operand1 + B_DX_imm) & ~32'd1;
        auipcResult = B_DX_PC + B_DX_immU;

        EX_mispredict = 1'b0;
        EX_target     = 32'b0;
        if (B_DX_isABranch && (B_DX_prediction != taken)) begin
            EX_mispredict = 1'b1;
            EX_target = taken ? branchTarget : (B_DX_PC + 32'd4);
        end else if (B_DX_isJal) begin
            EX_mispredict = 1'b1;
            EX_target = jalTarget;
        end else if (B_DX_isJalr) begin
            EX_mispredict = 1'b1;
            EX_target = jalrTarget;
        end

        if (B_DX_isJal)
            pcSelect = 2'b10; 
        else if (B_DX_isJalr)
            pcSelect = 2'b11;
        else
            pcSelect = 2'b00;
    end
    // ---------------------------------------
    logic [31:0] A_XM_inst, A_XM_PC, A_XM_imm, A_XM_dataA, A_XM_dataB, A_XM_ALURESULT, A_XM_auipcResult, A_XM_immU;
    logic A_XM_taken, A_XM_isABranch, A_XM_RWE, A_XM_isLui, A_XM_isJal, A_XM_isJalr, A_XM_isAuipc, A_XM_isLoad, A_XM_isStore;
    logic [4:0] A_XM_rd;
    logic [2:0] A_XM_func3;
    logic [4:0] A_XM_src1, A_XM_src2;

    logic [31:0] B_XM_inst, B_XM_PC, B_XM_imm, B_XM_dataA, B_XM_dataB, B_XM_ALURESULT, B_XM_auipcResult, B_XM_immU;
    logic B_XM_taken, B_XM_isABranch, B_XM_RWE, B_XM_isLui, B_XM_isJal, B_XM_isJalr, B_XM_isAuipc, B_XM_isLoad, B_XM_isStore;
    logic [4:0] B_XM_rd;
    logic [2:0] B_XM_func3;
    logic [4:0] B_XM_src1, B_XM_src2;
    always_ff @(negedge clock or posedge reset) begin: XM_LATCH
        if (reset) begin
            A_XM_PC <= 32'b0;
            A_XM_inst <= 32'b0;
            A_XM_imm <= 32'b0;
            A_XM_dataA <= 32'b0;
            A_XM_dataB <= 32'b0;
            A_XM_ALURESULT <= 32'b0;
            A_XM_taken <= 1'b0;
            A_XM_rd <= 5'b0;
            A_XM_src1 <= 5'b0;
            A_XM_src2 <= 5'b0;
            A_XM_isABranch <= 1'b0;
            A_XM_RWE <= 1'b0;
            A_XM_isJal <= 1'b0;
            A_XM_isJalr <= 1'b0;
            A_XM_isAuipc <= 1'b0;
            A_XM_auipcResult <= 32'b0;
            A_XM_immU <= 32'b0;
            A_XM_isLui <= 1'b0;
            A_XM_func3 <= 3'b0;
            A_XM_isLoad <= 1'b0;
            A_XM_isStore <= 1'b0;

            B_XM_PC <= 32'b0;
            B_XM_inst <= 32'b0;
            B_XM_imm <= 32'b0;
            B_XM_dataA <= 32'b0;
            B_XM_dataB <= 32'b0;
            B_XM_ALURESULT <= 32'b0;
            B_XM_taken <= 1'b0;
            B_XM_rd <= 5'b0;
            B_XM_src1 <= 5'b0;
            B_XM_src2 <= 5'b0;
            B_XM_isABranch <= 1'b0;
            B_XM_RWE <= 1'b0;
            B_XM_isJal <= 1'b0;
            B_XM_isJalr <= 1'b0;
            B_XM_isAuipc <= 1'b0;
            B_XM_auipcResult <= 32'b0;
            B_XM_immU <= 32'b0;
            B_XM_isLui <= 1'b0;
            B_XM_func3 <= 3'b0;
            B_XM_isLoad <= 1'b0;
            B_XM_isStore <= 1'b0;
        end else begin
            A_XM_PC <= A_DX_PC;
            A_XM_inst <= A_DX_inst;
            A_XM_imm <= A_DX_imm;
            A_XM_dataA <= A_DX_dataA;
            A_XM_dataB <= A_DX_dataB;
            A_XM_ALURESULT <= A_aluResult;
            A_XM_taken <= taken;
            A_XM_rd <= A_DX_rd;
            A_XM_src1 <= A_DX_src1;
            A_XM_src2 <= A_DX_src2;
            A_XM_isABranch <= A_DX_isABranch;
            A_XM_RWE <= A_DX_RWE;
            A_XM_isJal <= A_DX_isJal;
            A_XM_isJalr <= A_DX_isJalr;
            A_XM_isAuipc <= A_DX_isAuipc;
            A_XM_auipcResult <= auipcResult;
            A_XM_immU <= A_DX_immU;
            A_XM_isLui <= A_DX_isLui;
            A_XM_func3 <= A_DX_func3;
            A_XM_isLoad <= A_DX_isLoad;
            A_XM_isStore <= A_DX_isStore;

            B_XM_PC <= B_DX_PC;
            B_XM_inst <= B_DX_inst;
            B_XM_imm <= B_DX_imm;
            B_XM_dataA <= B_DX_dataA;
            B_XM_dataB <= B_DX_dataB;
            B_XM_ALURESULT <= B_aluResult;
            B_XM_taken <= taken;
            B_XM_rd <= B_DX_rd;
            B_XM_src1 <= B_DX_src1;
            B_XM_src2 <= B_DX_src2;
            B_XM_isABranch <= B_DX_isABranch;
            B_XM_RWE <= B_DX_RWE;
            B_XM_isJal <= B_DX_isJal;
            B_XM_isJalr <= B_DX_isJalr;
            B_XM_isAuipc <= B_DX_isAuipc;
            B_XM_auipcResult <= auipcResult;
            B_XM_immU <= B_DX_immU;
            B_XM_isLui <= B_DX_isLui;
            B_XM_func3 <= B_DX_func3;
            B_XM_isLoad <= B_DX_isLoad;
            B_XM_isStore <= B_DX_isStore;
        end
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
    logic MW_taken, MW_isABranch, MW_RWE, MW_isJal, MW_isJalr, MW_isAuipc, MW_isLui, MW_isLoad, MW_isStore;
    logic [4:0] MW_rd;
    logic [4:0] MW_src1, MW_src2;

    always_ff @(negedge clock or posedge reset) begin: MW_LATCH
        if (reset) begin
            MW_PC <= 32'b0;
            MW_inst <= 32'b0;
            MW_imm <= 32'b0;
            MW_dataA <= 32'b0;
            MW_dataB <= 32'b0;
            MW_ALURESULT <= 32'b0;
            MW_taken <= 1'b0;
            MW_rd <= 5'b0;
            MW_src1 <= 5'b0;
            MW_src2 <= 5'b0;
            MW_isABranch <= 1'b0;
            MW_RWE <= 1'b0;
            MW_isJal <= 1'b0;
            MW_isJalr <= 1'b0;
            MW_isAuipc <= 1'b0;
            MW_auipcResult <= 32'b0;
            MW_immU <= 32'b0;
            MW_isLui <= 1'b0;
            MW_dmemOut <= 32'b0;
            MW_isLoad <= 1'b0;
            MW_isStore <= 1'b0;
        end else begin
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
    end

    // ------------------WRITEBACK----------------
    logic [4:0] A_WB_destination, B_WB_destination;

    logic [31:0] A_data_writeReg, B_data_writeReg;
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