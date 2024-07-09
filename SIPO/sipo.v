module sipo(

    input wire serial_in, reset, clk,

    output wire[3:0] data_out
    );

    reg[3:0] internal_ff;

    always@(posedge clk)
    begin
        if(reset)
            internal_ff <= 0;
        else
        begin
            internal_ff[3] <= serial_in;
            internal_ff[2] <= internal_ff[3];
            internal_ff[1] <= internal_ff[2];
            internal_ff[0] <= internal_ff[1];
        // or use {serial_in, internal_ff[2:0]}
        end
    end

    assign data_out = internal_ff;
endmodule