`timescale 1ns / 1ps

module Half_adder(
    input i_switch_0, i_switch_1,
    output o_sum, o_carry
    );

    assign o_sum = i_switch_0 ^ i_switch_1;
    assign o_carry = i_switch_0 & i_switch_1;
endmodule
