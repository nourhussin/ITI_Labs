`include "piso.v"
module piso_tb();

    localparam T = 10;
    reg clk = 0;

    reg write_en, reset;
    reg [3:0] data_in;

    wire serial_out;

    piso piso1(
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .write_en(write_en),
        .serial_out(serial_out)
    );

    always#(T/2) clk = ~clk;

    initial begin
        reset = 1;
        write_en = 0;
        data_in = 1001;
        #T;

        reset = 0;
        write_en = 1;
        #T;
        write_en = 0;
        #(5*T);

        data_in = 4'b1100;
        #T;
        write_en = 1;
        #T;
        write_en = 0;
        #(5*T);
    end
endmodule