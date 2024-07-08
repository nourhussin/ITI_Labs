module seq (
    input wire a, b, c, clk,
    output reg d, f
    );

    wire x3;
    reg x1, x2;

    always@(posedge clk)
    begin
        x1 <= b ^ c;
        d  <= x1 ^ a;
        x2 <= c & (~b);
        f  <= x3 | x2;
    end
    
    assign x3 = a & (~x1);
    endmodule