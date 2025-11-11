module setsourcedest(
    input logic [6:0] opcode,
    input logic [4:0] src1,
    input logic [4:0] src2,
    input logic [4:0] dest,
    output logic [4:0] out_src1,
    output logic [4:0] out_src2,
    output logic [4:0] out_dest
);
    always_comb begin
        if (opcode == 7'b0010011) begin // i type
            out_src1 = src1;
            out_src2 = 5'b0;
            out_dest = dest;
        end
        else if (opcode == 7'b0000011) begin // load
            out_src1 = src1;
            out_src2 = 5'b0;
            out_dest = dest;
        end
        else if (opcode == 7'b0100011) begin // store
            out_src1 = src1;
            out_src2 = src2;
            out_dest = 5'b0;
        end
        else if (opcode == 7'b1100011) begin // branch
            out_src1 = src1;
            out_src2 = src2;
            out_dest = 5'b0;
        end
        else if (opcode == 7'b1101111) begin // jal
            out_src1 = 5'b0;
            out_src2 = 5'b0;
            out_dest = dest;
        end
        else if (opcode == 7'b1100111) begin // jalr
            out_src1 = src1;
            out_src2 = 5'b0;
            out_dest = dest;
        end
        else if (opcode == 7'b0010111) begin // auipc
            out_src1 = 5'b0;
            out_src2 = 5'b0;
            out_dest = dest;
        end
        else if (opcode == 7'b0110111) begin // lui
            out_src1 = 5'b0;
            out_src2 = 5'b0;
            out_dest = dest;
        end
        else begin // r type
            out_src1 = src1;
            out_src2 = src2;
            out_dest = dest;
        end
    end
endmodule