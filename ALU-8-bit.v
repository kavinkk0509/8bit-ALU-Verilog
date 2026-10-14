`timescale 1ns / 1ps
module ALU_8_bit(

    input  wire [7:0] A,
    input  wire [7:0] B,
    input  wire [2:0] opcode,
    output reg  [7:0] Y,
    output reg        carry,
    output reg        zero
);

    reg [8:0] temp;

    always @(*) begin
        Y     = 8'b0;
        carry = 1'b0;
        temp  = 9'b0;

        case (opcode)
            3'b000: begin
                temp  = {1'b0, A} + {1'b0, B};
                Y     = temp[7:0];
                carry = temp[8];
            end

            3'b001: Y = A - B;
            3'b010: Y = A & B;
            3'b011: Y = A | B;
            3'b100: Y = A ^ B;
            3'b101: Y = ~A;

            default: begin
                Y     = 8'b0;
                carry = 1'b0;
            end
        endcase

        zero = (Y == 8'b0);
    end

endmodule
