`timescale 1ns / 1ps

module tb_fa_4bit();
    reg [3:0] i_a, i_b;
    reg mode;
    wire [3:0] o_sum;
    wire o_carry; 

    FA_4bit dut(
        .i_a(i_a),
        .i_b(i_b),
        .mode(mode),
        .o_sum(o_sum),
        .o_carry(o_carry)
    );

    initial begin
        #00 i_a = 4'b0000; i_b = 4'b0000; mode = 1'b1;
        #10 i_a = 4'd3; i_b = 4'd4; mode = 1'b1;
        #10 i_a = 4'ha; i_b = 4'hb; mode = 1'b1;
        #10 i_a = 4'h5; i_b = 4'h9; mode = 1'b1;
        #10 i_a = 4'h6; i_b = 4'h8; mode = 1'b1;
        #10 i_a = 4'h4; i_b = 4'h7; mode = 1'b1;
        #10 i_a = 4'h3; i_b = 4'h6; mode = 1'b1;
        #10 i_a = 4'h2; i_b = 4'h5; mode = 1'b1;
        #10 i_a = 4'd3; i_b = 4'd4; mode = 1'b0;
        #10 i_a = 4'ha; i_b = 4'hb; mode = 1'b0;
        #10 i_a = 4'h5; i_b = 4'h9; mode = 1'b0;
        #10 i_a = 4'h6; i_b = 4'h8; mode = 1'b0;
        #10 i_a = 4'h4; i_b = 4'h7; mode = 1'b0;
        #10 i_a = 4'h3; i_b = 4'h6; mode = 1'b0;
        #10 i_a = 4'h2; i_b = 4'h5; mode = 1'b0;
        #10 $finish;
    end

endmodule