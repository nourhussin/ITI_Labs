`include "clock_by24816.v"
module clock_by24816_tb;

    localparam T = 10;
    reg clk = 0;

    reg reset;

    wire clk_by2, clk_by4, clk_by8, clk_by16;

    clock_by24816 clock0(
        .clk(clk),
        .reset(reset),
        .clk_by2(clk_by2),
        .clk_by4(clk_by4),
        .clk_by8(clk_by8),
        .clk_by16(clk_by16)
    );

    always#(T/2) clk = ~clk;

    initial begin
        reset = 1;
        #20;
        reset = 0;
        #20;
        
    end
endmodule