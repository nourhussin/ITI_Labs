module circuit(
    input wire[3:0] seq1, seq2, seq3,
    output wire[7:0] out
    );

    wire[1:0] anding;
    wire[5:0] concatinating;
    wire[7:0] extending;

    assign anding = seq1[3:2] & seq2[1:0];
    assign concatinating = {anding, seq3};
    assign extending = {{2{concatinating[5]}}, concatinating};
    assign out = extending;
endmodule