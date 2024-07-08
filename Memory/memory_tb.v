`include "memory.v"
module memeory_tb;
    reg clk = 0, read_en, write_en, reset;
    reg[2:0] address;
    reg[7:0] data_in;
    wire[7:0] data_out;
    wire full_flag, empty_flag;

    memory DUT(
        .clk(clk),
        .read_en(read_en),
        .write_en(write_en),
        .reset(reset),
        .address(address),
        .data_in(data_in),
        .data_out(data_out),
        .full_flag(full_flag),
        .empty_flag(empty_flag)
    );

    always#5 clk = ~clk;

    initial begin
        reset = 1;
        read_en = 0;
        write_en = 0;
        #10;

        reset = 0;
        write_en = 1;

        address = 3'b000;
        data_in = 8'b1101_1000;
        #20;
        address = 3'b001;
        data_in = 8'b0001_0000;
        #20;
        address = 3'b010;
        data_in = 8'b1101_1000;
        #20;
        address = 3'b011;
        data_in = 8'b1101_1000;
        #20;
        address = 3'b100;
        data_in = 8'b1101_1000;
        #20;
        address = 3'b101;
        data_in = 8'b1101_1000;
        #20;
        address = 3'b110;
        data_in = 8'b1101_1000;
        #20;
        address = 3'b111;
        data_in = 8'b1101_1000;
        #20;

        write_en = 0;
        #10;
        read_en = 1;

    end

endmodule