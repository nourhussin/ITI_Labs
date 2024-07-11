module binary_to_gray #(parameter width = 4)(

    input wire [width-1 : 0] data_in,

    output wire [width-1 : 0] data_out
    );


    assign data_out = (data_in >> 1) ^ data_in;
    
endmodule