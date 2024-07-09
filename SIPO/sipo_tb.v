`include "sipo.v"
module sipo_tb;

    localparam T = 10;
    reg clk = 0;

    reg reset, serial_in;

    wire[3:0] data_out;

    sipo sipo1(
        .clk(clk),
        .reset(reset),
        .data_out(data_out),
        .serial_in(serial_in)
    );

    always#(T/2) clk = ~clk;

    initial begin
        reset = 1;
        serial_in = 1;
        #T;

        reset = 0;
        #(2*T);
        
        serial_in = 0;
        #(2*T);

        serial_in = 1;
        #(4*T);
    end
endmodule