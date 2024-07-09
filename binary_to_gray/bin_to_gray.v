module bin_to_gray(
    
    input wire [2:0] in_binary,

    output wire[2:0] out_gray
    );


    assign out_gray[2] = in_binary[2];
    assign out_gray[1] = in_binary[2] ^ in_binary[1];
    assign out_gray[0] = in_binary[1] ^ in_binary[0];

endmodule