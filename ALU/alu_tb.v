`include"alu.v"
module alu_tb;
    reg clk;
    reg[2:0] a,b;
    reg[3:0] opcode;
    wire[5:0] result;


    alu DUT(.clk(clk),
            .opcode(opcode),
            .result(result),
            .a(a),
            .b(b)
            );
    initial begin
        clk = 0;
        forever begin
            clk = ~clk;
        end
    end

    initial begin
        a = 3'b101;
        b = 3'b110;
        opcode = 4'b0000;
        #5;
        opcode = 4'b0011;
        #5;
        opcode = 4'b1100;
        #5;
    end
endmodule