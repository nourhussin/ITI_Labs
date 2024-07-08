`include"HA.v"
module FA (
    input wire a,b,cin,
    output wire sum,cout
    );

    wire c1,c2, s0;

    HA ha0(.a(a), .b(b), .c(c1), .s(s0));
    HA ha1(.a(s0), .b(cin), .c(c2), .s(sum));
    or or0(cout, c1, c2);

endmodule

