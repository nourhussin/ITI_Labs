`include "clock_by3.v"
`include "d_ff.v"
module clock_by6(

    input wire clk_in, reset,

    output wire clk_by6
    );

    wire in_between_clk;

    clk_by3 Divider3(
        .reset(reset), 
        .clk_in(clk_in), 
        .clk_by3(in_between_clk)
        );

    d_ff Divider2(
        .reset(reset), 
        .clk(in_between_clk), 
        .d(~clk_by6), 
        .q(clk_by6));

endmodule