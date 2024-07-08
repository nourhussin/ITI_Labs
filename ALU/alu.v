module alu (
    input wire clk,
    input wire[2:0] a,b,
    input wire[3:0] opcode,
    output reg[5:0] result
);
    always@(posedge clk)
    begin
        case(opcode)
        4'b0000: result = a + b ;
        4'b0010: result = a - b ;
        4'b0011: result = a * b ;
        4'b0100: result = a & b ;
        4'b0101: result = a | b ;
        4'b0110: result = a ^ b ;
        4'b0111: result = ~(a & b) ;
        4'b1000: result = ~(a | b) ;
        4'b1001: result = a ~^ b ;
        4'b1010: result = a << b ;
        4'b1011: result = a >> b ;
        4'b1100: result = {a , b} ;
        default: result = 0;
        endcase
    end 

endmodule 