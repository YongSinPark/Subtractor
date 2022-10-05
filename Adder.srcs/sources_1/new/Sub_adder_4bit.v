`timescale 1ns / 1ps

module Sub_adder_4bit(
    input [3:0] i_a, i_b,
    input i_mode,
    output [3:0] o_sum,
    output o_carry
    );
    wire [3:0] w_b;

    assign w_b = {4{i_mode}} ^ i_b; //assign w_b = 4'b1111 ^ i_b; or 4'b0000 ^ i_b;

    FA_4bit Adder_sub(
        .i_a(i_a),
        .i_b(w_b),
        .i_cin(i_mode),
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

endmodule
