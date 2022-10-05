`timescale 1ns / 1ps

module FA_4bit(
        input [3:0] i_a, i_b,
        input i_cin,
        output [3:0] o_sum,
        output o_carry
    );
    wire [2:0] w_carry;

    
    Full_adder FA_0(
        .i_switch_0(i_a[0]),
        .i_switch_1(i_b[0]),
        .i_switch_2(i_cin),
        .o_sum(o_sum[0]),
        .o_carry(w_carry[0])
    );

    Full_adder FA_1(
        .i_switch_0(i_a[1]),
        .i_switch_1(i_b[1]),
        .i_switch_2(w_carry[0]),
        .o_sum(o_sum[1]),
        .o_carry(w_carry[1])
    );

    Full_adder FA_2(
        .i_switch_0(i_a[2]),
        .i_switch_1(i_b[2]),
        .i_switch_2(w_carry[1]),
        .o_sum(o_sum[2]),
        .o_carry(w_carry[2])
    );

    Full_adder FA_3(
        .i_switch_0(i_a[3]),
        .i_switch_1(i_b[3]),
        .i_switch_2(w_carry[2]),
        .o_sum(o_sum[3]),
        .o_carry(o_carry)
    );

endmodule