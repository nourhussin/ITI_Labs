`include "async_fifo.v"
module async_fifo_tb;
    
    parameter width = 32;

    reg[width-1 : 0] write_data;
    reg write_clk, read_clk, write_resetn, read_resetn;
    reg write_enable, read_enable;

    wire[width-1 : 0] read_data;
    wire full_flag, empty_flag;

    async_fifo DUT(
        .write_clk(write_clk),
        .read_clk(read_clk),
        .write_resetn(write_resetn),
        .read_resetn(read_resetn),
        .write_enable(write_enable),
        .read_enable(read_enable),
        .write_data(write_data),
        .read_data(read_data),
        .full_flag(full_flag),
        .empty_flag(empty_flag)
    );

    always#10 write_clk = ~write_clk;
    always#6.25 read_clk = ~read_clk;

    initial begin
        write_clk = 0; read_clk = 0;
        write_resetn = 0; read_resetn = 0;
        write_enable = 0; read_enable = 0;
        #10;

        write_resetn = 1; read_resetn = 1;
        write_enable = 1;
        write_data = 50;
        #500;

        write_enable = 0; read_enable = 1;
        #500;
    end
endmodule