`timescale 1ns / 1ps

module Full_adder(
    input i_switch_0, i_switch_1, i_switch_2,
    output o_sum, o_carry
    );
    wire w_sum_0, w_carry_0, w_carry_1;

    Half_adder HA_0(
        .i_switch_0(i_switch_0),
        .i_switch_1(i_switch_1),
        .o_sum(w_sum_0),
        .o_carry(w_carry_0)
    );

    Half_adder HA_1(
        .i_switch_0(w_sum_0),
        .i_switch_1(i_switch_2),
        .o_sum(o_sum),
        .o_carry(w_carry_1)
    );

    assign o_carry = w_carry_0 | w_carry_1;

endmodule
