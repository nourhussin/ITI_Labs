`include "d_ff.v"
module clock_by3 (

    input wire clk_in, reset,

    output wire clk_by3
    );

    wire[2:0] Q;

    d_ff D0(.clk(clk_in), .reset(reset), .d(~(Q[0] | Q[1])), .q(Q[0]));
    d_ff D1(.clk(clk_in), .reset(reset), .d(Q[0]),           .q(Q[1]));
    d_ff D2(.clk(~clk_in),.reset(reset), .d(Q[1]),           .q(Q[2]));

    assign clk_by3 = Q[1] | Q[2];
endmodule