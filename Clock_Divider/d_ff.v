module d_ff (
    input wire clk, reset, d,

    output reg q,
    output wire qn
    );

    always @(posedge clk) 
    begin
        if (reset)
            q <= 0;
        else
            q <= d;
    end

    assign qn = ~q;
endmodule