module alu(operandA, operandB, ALUop, result, branch);
    input logic [31:0] operandA, operandB;
    input logic [3:0] ALUop;

    output logic [31:0] result;
    output logic branch;

    // add 0000
    // subtract 1000
    // xor 0100
    // or 0110  
    // and 0111
    // sll 0001
    // srl 0101
    // sra 1101
    // slt 0010
    // sltu 0011
    logic signed [31:0] signedA;
    logic signed [31:0] signedB;
    assign signedA = $signed(operandA);
    assign signedB = $signed(operandB);


    always_comb begin : alu
        result = 32'b0;
        case (ALUop)
            4'b0000: begin
                result = signedA + signedB;
            end
            4'b1000: begin
                result = signedA - signedB;
            end
            4'b0100: begin
                result = signedA ^ signedB;
            end
            4'b0110: begin
                result = signedA | signedB;
            end
            4'b0111: begin
                result = signedA & signedB;
            end
            4'b0001: begin
                result = signedA << operandB[4:0];
            end
            4'b0101: begin
                result = signedA >> operandB[4:0];
            end
            4'b1101: begin
                result = signedA >>> operandB[4:0];
            end
            4'b0010: begin
                result = (signedA < signedB) ? 32'd1 : 32'd0;
            end
            4'b0011: begin
                result = (operandA < operandB) ? 32'd1 : 32'd0;
            end
            default: begin
                result = 32'b0;
            end
        endcase
    end

    always_comb begin: branchcomb
        case(ALUop[2:0])
            3'b000:
                branch = operandA == operandB;
            3'b001:
                branch = operandA != operandB;
            3'b100:
                branch = signedA < signedB;
            3'b101:
                branch = signedA >= signedB;
            3'b110:
                branch = operandA < operandB;
            3'b111:
                branch = operandA >= operandB;
            default: 
                branch = 0;
        endcase
    end

endmodule