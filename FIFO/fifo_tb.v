`include "fifo.v"
module fifo_tb;

    localparam T = 10;
    reg clk = 0;

    reg reset, write_en, read_en;
    reg[31:0] data_in;

    wire full, empty;
    wire[31:0] data_out;

    fifo DUT(
        .clk(clk),
        .full(full),
        .empty(empty),
        .reset(reset),
        .read_en(read_en),
        .write_en(write_en),
        .data_in(data_in),
        .data_out(data_out)
    );

    always#(T/2) clk = !clk;

    initial begin
        reset = 1;
        data_in = 0;
        write_en = 0;
        read_en = 0;
        #T;

        reset = 0;
        data_in = 32'd50;
        write_en = 1;
        #T;#T;

        write_en = 0;
        read_en = 1;
        #T;
    end

endmodule