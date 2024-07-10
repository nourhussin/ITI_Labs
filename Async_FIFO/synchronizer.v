module synchronizer #(parameter width = 3) (
    
    input wire clk, resetn, 
    input wire [width:0] d_in, 
    
    output reg [width:0] d_out
    );

    reg [width:0] q1;


    always@(posedge clk) 
    begin
        if(!resetn) 
        begin
            q1 <= 0;
            d_out <= 0;
        end

        else 
        begin
            q1 <= d_in;
            d_out <= q1;
        end
    end
endmodule