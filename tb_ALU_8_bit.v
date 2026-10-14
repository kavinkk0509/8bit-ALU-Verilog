
`timescale 1ns/1ps

module tb_ALU_8_bit;

    reg  [7:0] A, B;
    reg  [2:0] opcode;

    wire [7:0] Y;
    wire carry, zero;

    ALU_8_bit dut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .Y(Y),
        .carry(carry),
        .zero(zero)
    );

    initial begin
        // Addition: 15 + 10 = 25
        A = 15; B = 10; opcode = 3'b000;
        #10;

        // Addition overflow: 255 + 1 = 0
        A = 255; B = 1; opcode = 3'b000;
        #10;

        // Subtraction: 20 - 5 = 15
        A = 20; B = 5; opcode = 3'b001;
        #10;

        // AND
        A = 8'hF0; B = 8'h0F; opcode = 3'b010;
        #10;

        // OR
        A = 8'hF0; B = 8'h0F; opcode = 3'b011;
        #10;

        // XOR
        A = 8'hAA; B = 8'hFF; opcode = 3'b100;
        #10;

        // NOT A
        A = 8'h0F; B = 0; opcode = 3'b101;
        #10;

        // Invalid opcode
        A = 8'h12; B = 8'h34; opcode = 3'b110;
        #10;

        $finish;
    end

endmodule
