module setsourcedest(
    input logic [6:0] A_opcode,
    input logic [4:0] A_src1,
    input logic [4:0] A_src2,
    input logic [4:0] A_dest,

    output logic [4:0] A_out_src1,
    output logic [4:0] A_out_src2,
    output logic [4:0] A_out_dest,

    input logic [6:0] B_opcode,
    input logic [4:0] B_src1,
    input logic [4:0] B_src2,
    input logic [4:0] B_dest,
    
    output logic [4:0] B_out_src1,
    output logic [4:0] B_out_src2,
    output logic [4:0] B_out_dest
);
    always_comb begin
        if (A_opcode == 7'b0010011) begin // i type
            A_out_src1 = A_src1;
            A_out_src2 = 5'b0;
            A_out_dest = A_dest;
        end
        else if (A_opcode == 7'b0000011) begin // load
            A_out_src1 = A_src1;
            A_out_src2 = 5'b0;
            A_out_dest = A_dest;
        end
        else if (A_opcode == 7'b0100011) begin // store
            A_out_src1 = A_src1;
            A_out_src2 = A_src2;
            A_out_dest = 5'b0;
        end
        else if (A_opcode == 7'b1100011) begin // branch
            A_out_src1 = A_src1;
            A_out_src2 = A_src2;
            A_out_dest = 5'b0;
        end
        else if (A_opcode == 7'b1101111) begin // jal
            A_out_src1 = 5'b0;
            A_out_src2 = 5'b0;
            A_out_dest = A_dest;
        end
        else if (A_opcode == 7'b1100111) begin // jalr
            A_out_src1 = A_src1;
            A_out_src2 = 5'b0;
            A_out_dest = A_dest;
        end
        else if (A_opcode == 7'b0010111) begin // auipc
            A_out_src1 = 5'b0;
            A_out_src2 = 5'b0;
            A_out_dest = A_dest;
        end
        else if (A_opcode == 7'b0110111) begin // lui
            A_out_src1 = 5'b0;
            A_out_src2 = 5'b0;
            A_out_dest = A_dest;
        end
        else begin // r type
            A_out_src1 = A_src1;
            A_out_src2 = A_src2;
            A_out_dest = A_dest;
        end

        if (B_opcode == 7'b0010011) begin // i type
            B_out_src1 = B_src1;
            B_out_src2 = 5'b0;
            B_out_dest = B_dest;
        end
        else if (B_opcode == 7'b0000011) begin // load
            B_out_src1 = B_src1;
            B_out_src2 = 5'b0;
            B_out_dest = B_dest;
        end
        else if (B_opcode == 7'b0100011) begin // store
            B_out_src1 = B_src1;
            B_out_src2 = B_src2;
            B_out_dest = 5'b0;
        end
        else if (B_opcode == 7'b1100011) begin // branch
            B_out_src1 = B_src1;
            B_out_src2 = B_src2;
            B_out_dest = 5'b0;
        end
        else if (B_opcode == 7'b1101111) begin // jal
            B_out_src1 = 5'b0;
            B_out_src2 = 5'b0;
            B_out_dest = B_dest;
        end
        else if (B_opcode == 7'b1100111) begin // jalr
            B_out_src1 = B_src1;
            B_out_src2 = 5'b0;
            B_out_dest = B_dest;
        end
        else if (B_opcode == 7'b0010111) begin // auipc
            B_out_src1 = 5'b0;
            B_out_src2 = 5'b0;
            B_out_dest = B_dest;
        end
        else if (B_opcode == 7'b0110111) begin // lui
            B_out_src1 = 5'b0;
            B_out_src2 = 5'b0;
            B_out_dest = B_dest;
        end
        else begin // r type
            B_out_src1 = B_src1;
            B_out_src2 = B_src2;
            B_out_dest = B_dest;
        end

    end
endmodule