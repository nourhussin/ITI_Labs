`include "detector.v"
module detector_tb;

    localparam T = 10;
    reg clk = 0;

    reg reset, sequence_in;

    wire detected;

    detector DUT(
        .clk(clk),
        .reset(reset),
        .detected(detected),
        .sequence_in(sequence_in)
    );

    always#(T/2) clk = ~clk;

    initial begin
        reset = 1;
        sequence_in = 0;
        #T;

        reset = 0;
        sequence_in = 1;
        #T;
        sequence_in = 0;
        #T;
        sequence_in = 1;
        #T;
        sequence_in = 1;
        #T;
        sequence_in = 0;
        #T;
        sequence_in = 1;
        #T;
        sequence_in = 0;
        #T;
        sequence_in = 1;
        #T;
        sequence_in = 0;
        #T;
    end

endmodule