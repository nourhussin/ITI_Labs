module comb (
    input wire a, b, c,
    output wire d, f
    );

    wire x1, x2, x3;

    assign x1 = b ^ c;
    assign d = x1 ^ a;
    assign x2 = c & (~b);
    assign x3 = a & (~x1);
    assign f = x3 | x2;

endmodule