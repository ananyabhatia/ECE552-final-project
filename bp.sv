module bp(
    input logic clock,
    input logic [31:0] PC,
    output logic dir_pred,
    output logic [31:0] tar_pred
);

    assign dir_pred = 1'b0;
    assign tar_pred = 32'b0;
endmodule

// for now, predict not taken