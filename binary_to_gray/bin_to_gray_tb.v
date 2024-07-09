`include "bin_to_gray.v"
module bin_to_gray_tb;

    reg[2:0] in_binary;

    wire[2:0] out_gray;

    bin_to_gray DUT(
        .in_binary(in_binary),
        .out_gray(out_gray)
    );

    initial begin
        in_binary = 3'b000;
        #10;
        in_binary = 3'b001;
        #10;
        in_binary = 3'b010;
        #10;
        in_binary = 3'b011;
        #10;
        in_binary = 3'b100;
        #10;
        in_binary = 3'b101;
        #10;
        in_binary = 3'b110;
        #10;
        in_binary = 3'b111;
        #10;
    end
endmodule