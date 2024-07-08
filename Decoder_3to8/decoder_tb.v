`include"decoder.v"
module decoder_tb;
    reg enable;
    reg[2:0] in;
    wire[7:0] out;


    decoder D (.enable(enable),
               .in(in),
               .out(out));

    initial begin
        enable = 0;
        in = 3'b100;
        #10;
        in = 3'b001;
        #10;

        enable = 1;
        #5;
        in = 3'b111;
        #5;
        in = 3'b110;
    end
endmodule