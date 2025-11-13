`timescale 1ns/1ps

module tb_processor;

    logic clock;
    logic reset;

    processor uut (
        .clock(clock),
        .reset(reset)
    );

    // clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock;  // 100 MHz clock
    end

    // reset pulse
    initial begin
        reset = 1;
        #20;           // hold reset for 20 ns
        reset = 0;
    end

    // simulation length
    initial begin
        #200;         // run ~200 cycles
        $finish;
    end

    // dump waveform for GTKWave
    initial begin
        $dumpfile("processor.vcd");
        $dumpvars(0, uut);
    end

    // print register contents each cycle
    always_ff @(posedge clock) begin
        if (!reset) begin
            $display("\nCycle %0t | PC=%h", $time/10, uut.PC);
            $display("data write reg=%h", uut.data_writeReg);
            $display("instruction=%h", uut.instruction);
            // $display("load_use_hazard=%b", uut.load_use_hazard);
            // $display("mispredict=%b", uut.EX_mispredict);
            // $display("PC=%b", uut.PC);
            // $display("nextpc=%b", uut.nextPC);
            // $display("DX_isload=%b", uut.DX_isLoad);
            // $display("DX_rd=%b", uut.DX_rd);
            // $display("src1=%b", uut.src1);
            // $display("src2=%b", uut.DX_src2);
            $display("dxinst=%h", uut.DX_inst);
            $display("operandA=%h", uut.operandA);
            $display("operandB=%h", uut.operandB);
            $display("aluop=%b", uut.DX_ALUop);
            $display("ALUout=%h", uut.aluResult);
            $display("dxaluinb=%b", uut.DX_ALUinB);
            $display("dx_datab=%h", uut.DX_dataB);
            $display("src1=%b", uut.src1);
            $display("src2=%b", uut.src2);
            $display("data read A=%h", uut.data_readRegA);
            $display("data read B=%h", uut.data_readRegB);
            $display("forwardB=%b", uut.forwardB);
            $display("x0  = %h",  uut.RegisterFile.regs[0]);
            $display("x1  = %h",  uut.RegisterFile.regs[1]);
            $display("x2  = %h",  uut.RegisterFile.regs[2]);
            $display("x3  = %h",  uut.RegisterFile.regs[3]);
            $display("x4  = %h",  uut.RegisterFile.regs[4]);
            $display("x5  = %h",  uut.RegisterFile.regs[5]);
            $display("x6  = %h",  uut.RegisterFile.regs[6]);
            $display("x7  = %h",  uut.RegisterFile.regs[7]);
            $display("x8  = %h",  uut.RegisterFile.regs[8]);
            $display("x9  = %h",  uut.RegisterFile.regs[9]);
            $display("x10 = %h",  uut.RegisterFile.regs[10]);
            $display("x11 = %h",  uut.RegisterFile.regs[11]);
            // $display("x12 = %h",  uut.RegisterFile.regs[12]);
            // $display("x13 = %h",  uut.RegisterFile.regs[13]);
            // $display("x14 = %h",  uut.RegisterFile.regs[14]);
            // $display("x15 = %h",  uut.RegisterFile.regs[15]);
            // $display("x16 = %h",  uut.RegisterFile.regs[16]);
            // $display("x17 = %h",  uut.RegisterFile.regs[17]);
            // $display("x18 = %h",  uut.RegisterFile.regs[18]);
            // $display("x19 = %h",  uut.RegisterFile.regs[19]);
            // $display("x20 = %h",  uut.RegisterFile.regs[20]);
            // $display("x21 = %h",  uut.RegisterFile.regs[21]);
            // $display("x22 = %h",  uut.RegisterFile.regs[22]);
            // $display("x23 = %h",  uut.RegisterFile.regs[23]);
            // $display("x24 = %h",  uut.RegisterFile.regs[24]);
            // $display("x25 = %h",  uut.RegisterFile.regs[25]);
            // $display("x26 = %h",  uut.RegisterFile.regs[26]);
            // $display("x27 = %h",  uut.RegisterFile.regs[27]);
            // $display("x28 = %h",  uut.RegisterFile.regs[28]);
            // $display("x29 = %h",  uut.RegisterFile.regs[29]);
            // $display("x30 = %h",  uut.RegisterFile.regs[30]);
            // $display("x31 = %h",  uut.RegisterFile.regs[31]);
            $display("---------------------------------------------");
        end
    end

endmodule
