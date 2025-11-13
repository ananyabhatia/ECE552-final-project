module bp(
    input logic clock,
    input logic [31:0] PC,
    output logic direction,
    output logic [31:0] target
);

    assign direction = 1'b0;
    assign target = 32'b0;
endmodule

// for now, predict not taken