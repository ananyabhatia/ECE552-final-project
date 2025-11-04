`timescale 1ns/1ps

module tb_processor;

    // DUT connections
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

    // 10 ns period clock (100 MHz)
    always #5 clock = ~clock;

    // expected value and operation name
    logic [31:0] expected;
    string opname;

    // ------------------------------------------------------------
    // Helper task to run a single instruction test
    // ------------------------------------------------------------
    task run_test(input [31:0] instr, input string name, input [31:0] exp);
        begin
            instruction = instr;
            opname = name;
            expected = exp;

            @(posedge clock); #1;  // allow one cycle
            $display("[%0t] %-5s | instr=%h | expected=%0d | actual=%0d | %s",
                     $time, opname, instruction, expected, dataToWrite,
                     (dataToWrite === expected) ? "PASS" : "FAIL");
        end
    endtask

    // ------------------------------------------------------------
    // Clock/Reset/Simulation control
    // ------------------------------------------------------------
    integer b;
    reg [31:0] val1, val2;

    initial begin
        $display("\n=== BEGIN PROCESSOR R-TYPE ALU TESTS ===");

        // Initialize
        clock = 0;
        reset = 1;
        instruction = 32'b0;
        #20 reset = 0;

        // --------------------------------------------------------
        // Preload registers x1 = 5, x2 = 3 using hierarchical access
        // --------------------------------------------------------
        #2;  // wait for elaboration

        // --------------------------------------------------------
        // R-TYPE ALU INSTRUCTIONS (opcode = 0110011)
        // --------------------------------------------------------
        run_test(32'b0000000_00010_00001_000_00011_0110011, "ADD", 32'd8);
        run_test(32'b0100000_00010_00001_000_00100_0110011, "SUB", 32'd2);
        run_test(32'b0000000_00010_00001_100_00101_0110011, "XOR", 32'd6);
        run_test(32'b0000000_00010_00001_110_00110_0110011, "OR", 32'd7);
        run_test(32'b0000000_00010_00001_111_00111_0110011, "AND", 32'd1);
        run_test(32'b0000000_00010_00001_001_01000_0110011, "SLL", 32'd40);
        run_test(32'b0000000_00010_00001_101_01001_0110011, "SRL", 32'd0);
        run_test(32'b0100000_00010_00001_101_01010_0110011, "SRA", 32'd0);
        run_test(32'b0000000_00010_00001_010_01011_0110011, "SLT", 32'd0);
        run_test(32'b0000000_00010_00001_011_01100_0110011, "SLTU", 32'd0);

        // --- I-TYPE IMMEDIATE INSTRUCTIONS (opcode = 0010011) ---

        // ADDI x13, x1, 10 → 5 + 10 = 15
        run_test(32'b000000001010_00001_000_01101_0010011, "ADDI", 32'd15);

        // XORI x14, x1, 1 → 5 ^ 1 = 4
        run_test(32'b000000000001_00001_100_01110_0010011, "XORI", 32'd4);

        // ORI  x15, x1, 1 → 5 | 1 = 5
        run_test(32'b000000000001_00001_110_01111_0010011, "ORI",  32'd5);

        // ANDI x16, x1, 1 → 5 & 1 = 1
        run_test(32'b000000000001_00001_111_10000_0010011, "ANDI", 32'd1);

        // SLLI x17, x1, 1 → 5 << 1 = 10
        run_test(32'b0000000_00001_00001_001_10001_0010011, "SLLI", 32'd10);

        // SRLI x18, x1, 1 → 5 >> 1 = 2
        run_test(32'b0000000_00001_00001_101_10010_0010011, "SRLI", 32'd2);

        // SRAI x19, x1, 1 → 5 >>> 1 = 2
        run_test(32'b0100000_00001_00001_101_10011_0010011, "SRAI", 32'd2);

        // SLTI x20, x1, 10 → (5 < 10) ? 1 : 0 → 1
        run_test(32'b000000001010_00001_010_10100_0010011, "SLTI", 32'd1);

        // SLTIU x21, x1, 10 → (5 < 10) ? 1 : 0 → 1
        run_test(32'b000000001010_00001_011_10101_0010011, "SLTIU", 32'd1);


        // --------------------------------------------------------
        // End of simulation
        // --------------------------------------------------------
        #10;
        $display("=== END OF R-TYPE TESTS ===\n");
        $finish;
    end

    always @(posedge clock) begin
        $display("ALU inputs: A=%h, B=%h, op=%h", DUT.ALU_unit.operandA, DUT.ALU_unit.operandB, DUT.ALUop);
        $display("datawritereg: %h", DUT.data_writeReg);
        $display("rd: %h", DUT.rd);
        $display("aluout: %h", DUT.aluResult);
        $display("signed values: A=%0d, B=%0d", DUT.ALU_unit.signedA, DUT.ALU_unit.signedB);
    end


endmodule
