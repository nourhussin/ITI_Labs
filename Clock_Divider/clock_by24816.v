`include "d_ff.v"
module clock_by24816(
    input wire clk, reset,
    output wire clk_by2, clk_by4, clk_by8, clk_by16
    );

    d_ff t0(
            .d(~clk_by2),
            .clk(clk),
            .reset(reset),
            .q(clk_by2)
            );

    d_ff t1(
            .d(~clk_by4),
            .clk(~clk_by2),
            .reset(reset),
            .q(clk_by4)
            );

    d_ff t2(
            .d(~clk_by8),
            .clk(~clk_by4),
            .reset(reset),
            .q(clk_by8)
            );

    d_ff t3(
            .d(~clk_by16),
            .clk(~clk_by8),
            .reset(reset),
            .q(clk_by16)
            );
endmodule