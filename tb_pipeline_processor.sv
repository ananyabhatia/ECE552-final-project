`timescale 1ns/1ps

module tb_pipeline_processor;

    // DUT signals
    logic clock;
    logic reset;
    logic [31:0] instruction;
    logic [31:0] dataToWrite;

    // Instantiate the processor
    processor DUT (
        .clock(clock),
        .reset(reset),
        .instruction(instruction),
        .dataToWrite(dataToWrite)
    );

    // ---------------- CLOCK GENERATION ----------------
    always #5 clock = ~clock; // 10 ns period (100 MHz)

    // ---------------- INSTRUCTION MEMORY ----------------
    logic [31:0] imem [0:15];  // small program

    initial begin
        // ---------- Program ----------
        // Assume x1=5, x2=3 preloaded in regfile
        // ADD x3, x1, x2      -> 5 + 3 = 8
        imem[0] = 32'b0000000_00010_00001_000_00011_0110011; // ADD

        // SUB x4, x1, x2      -> 5 - 3 = 2
        imem[1] = 32'b0100000_00010_00001_000_00100_0110011; // SUB

        // AND x5, x1, x2      -> 5 & 3 = 1
        imem[2] = 32'b0000000_00010_00001_111_00101_0110011; // AND

        // ADDI x6, x1, 10     -> 5 + 10 = 15
        imem[3] = 32'b000000001010_00001_000_00110_0010011;  // ADDI

        // XORI x7, x1, 1      -> 5 ^ 1 = 4
        imem[4] = 32'b000000000001_00001_100_00111_0010011;  // XORI

        // ORI x8, x1, 1       -> 5 | 1 = 5
        imem[5] = 32'b000000000001_00001_110_01000_0010011;  // ORI

        // ANDI x9, x1, 1      -> 5 & 1 = 1
        imem[6] = 32'b000000000001_00001_111_01001_0010011;  // ANDI

        // SLLI x10, x1, 1     -> 5 << 1 = 10
        imem[7] = 32'b0000000_00001_00001_001_01010_0010011; // SLLI

        // SRLI x11, x1, 1     -> 5 >> 1 = 2
        imem[8] = 32'b0000000_00001_00001_101_01011_0010011; // SRLI

        // SLTI x12, x1, 10    -> (5<10)=1
        imem[9] = 32'b000000001010_00001_010_01100_0010011;  // SLTI

        // fill rest with NOP (addi x0,x0,0)
        for (int i = 10; i < 16; i++)
            imem[i] = 32'b000000000000_00000_000_00000_0010011;
    end

    // ---------------- FETCH SIMULATION ----------------
    // since we don’t have an instruction memory in the DUT yet,
    // we drive `instruction` from this testbench based on the DUT’s PC
    always_comb begin
        instruction = imem[DUT.PC[5:2]]; // 16 words max
    end

    // ---------------- RESET SEQUENCE ----------------
    initial begin
        clock = 0;
        reset = 1;
        #20 reset = 0;
    end

    // ---------------- MONITORING ----------------
    initial begin
        $display("\n=== BEGIN PIPELINED PROCESSOR TEST ===");
        $monitor("[%0t] PC=%h | Inst=%h | ALUout=%h | WriteData=%h",
                 $time, DUT.PC, instruction, DUT.aluResult, dataToWrite);
    end

    // ---------------- SIMULATION STOP ----------------
    initial begin
        #300; // run for a few dozen cycles
        $display("=== END OF TEST ===");
        $finish;
    end

endmodule
