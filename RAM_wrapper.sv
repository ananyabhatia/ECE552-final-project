`timescale 1ns / 1ps
module RAM_wrapper #( parameter DATA_WIDTH = 32, ADDRESS_WIDTH = 32, DEPTH = 4096) (
    input logic                     clk,
    input logic                     wEn,
    input logic [ADDRESS_WIDTH-1:0] addr,
    input logic [DATA_WIDTH-1:0]    dataIn,
    input logic [2:0]               func3, // 000 is byte, 001 is half, 010 is word, 100 is load byte unsigned, 101 is load half unsigned 
    output logic [DATA_WIDTH-1:0]    dataOut = 0);
    


    logic [3:0] byte_wea;
    logic [15:0] addra; 
    logic [31:0] ram_data_in;
    logic [31:0] ram_data_out;

    


    always_comb begin
        addra = addr[17:2];
        // which byte is it?? addr[1:0]
        case(func3)
            3'b000: begin
                ram_data_in = {dataIn[7:0], dataIn[7:0], dataIn[7:0], dataIn[7:0]};
                dataOut = ram_data_out >> (8*addr[1:0]);
                dataOut = {{24{dataOut[7]}}, dataOut[7:0]}; // sign extend
                byte_wea = {4'b000, wEn} << addr[1:0];
            end
            3'b001: begin
                ram_data_in = {dataIn[15:0], dataIn[15:0]};
                dataOut = ram_data_out >> (16*addr[1]);
                dataOut = {{16{dataOut[15]}}, dataOut[15:0]}; // sign extend
                byte_wea = {4'b00, wEn, wEn} << (2*addr[1]);
            end
            3'b010: begin
                ram_data_in = dataIn;
                dataOut = ram_data_out;
                byte_wea = {wEn, wEn, wEn, wEn};
            end
            3'b100: begin
                ram_data_in = 32'b0;
                dataOut = ram_data_out >> (8*addr[1:0]);
                dataOut = {24'b0, dataOut[7:0]}; // zero extend
                byte_wea = 4'b0000;
            end
            3'b101: begin
                ram_data_in = 32'b0;
                dataOut = ram_data_out >> (16*addr[1]);
                dataOut = {16'b0, dataOut[15:0]}; // zero extend
                byte_wea = 4'b0000;
            end
            default: begin
                ram_data_in = 32'b0;
                dataOut = 32'b0;
                dataOut = 32'b0; 
                byte_wea = 4'b0000;
            end
        endcase
    end

    // need the actual thing ????????????????


    RAM my_favorite_rammy(
        .clkA(clk),
        .enaA(1'b1),
        .weA(byte_wea),
        .addrA(addra),
        .dinA(ram_data_in),
        .doutA(ram_data_out),

        .clkB(clk),
        .enaB(1'b0),
        .weB(4'b0),
        .addrB(16'b0),
        .dinB(32'b0)
        // .doutB(32'b0)
    );
endmodule
