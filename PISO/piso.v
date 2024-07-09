module piso(

    input wire reset, write_en, clk,
    input wire [3:0] data_in,

    output wire serial_out
    );

    reg [3:0] internal_ff;

    always@(posedge clk)
    begin
        if(reset)
            internal_ff <= 4'b0000;
        else if (write_en)
            internal_ff <= data_in;
        else
            internal_ff <= internal_ff >> 1;

    end

    assign serial_out = internal_ff[0];
endmodule