`timescale 1ns / 1ps

module tb_full_adder();
    reg i_switch_0, i_switch_1, i_switch_2;
    wire o_sum, o_carry;

    Full_adder dut(
        .i_switch_0(i_switch_0),
        .i_switch_1(i_switch_1),
        .i_switch_2(i_switch_2),
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

    initial begin
        #00 i_switch_0 = 1'b0; i_switch_1 = 1'b0; i_switch_2 = 1'b0;
        #10 i_switch_0 = 1'b0; i_switch_1 = 1'b0; i_switch_2 = 1'b1;
        #10 i_switch_0 = 1'b0; i_switch_1 = 1'b1; i_switch_2 = 1'b0;
        #10 i_switch_0 = 1'b0; i_switch_1 = 1'b1; i_switch_2 = 1'b1;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b0; i_switch_2 = 1'b0;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b0; i_switch_2 = 1'b1;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b1; i_switch_2 = 1'b0;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b1; i_switch_2 = 1'b1;
        #10 $finish;
    end 
    
endmodule
