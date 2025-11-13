`timescale 1ns / 1ps
module ROM #(parameter DATA_WIDTH = 32, ADDRESS_WIDTH = 16, DEPTH = 65536, MEMFILE = "") (
    input wire                     clk,
    input wire [ADDRESS_WIDTH-1:0] addr,
    output reg [DATA_WIDTH-1:0]    dataOut = 0);
    
    reg[DATA_WIDTH-1:0] MemoryArray[0:DEPTH-1];
    
    initial begin
        if(MEMFILE > 0) begin
            $readmemh(MEMFILE, MemoryArray); // READ MEM B MEANS BINARY, CHANGE TO H IF HEX
        end
    end
    
    always @(posedge clk) begin
        dataOut <= MemoryArray[addr];
    end
endmodule
