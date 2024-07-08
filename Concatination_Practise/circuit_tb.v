`include"circuit.v"
module circuit_tb;
    reg[3:0] seq1, seq2, seq3;
    wire[7:0] out;

    circuit c0(
        .seq1(seq1),
        .seq2(seq2),
        .seq3(seq3),
        .out(out)
    );

    initial begin
        seq1 = 4'b1011;
        seq2 = 4'b0011;
        seq3 = 4'b1010;
        #20;
        $finish;

    end
endmodule