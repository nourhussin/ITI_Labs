module fifo #(parameter depth=8, width=32) (

    input wire clk, reset, write_en, read_en,
    input [width-1:0] data_in,
    
    output reg [width-1:0] data_out,
    output full, empty
    );
  
    reg [$clog2(depth)-1:0] write_ptr, read_ptr;
    reg [width-1:0] fifo [0:depth-1];
    
    always@(posedge clk) 
    begin
        if(reset) 
        begin
            write_ptr <= 0;
            read_ptr <= 0;
            data_out <= 0;
        end
    end
    
    always@(posedge clk) 
    begin
        if(write_en & !full)
        begin
            fifo[write_ptr] <= data_in;
            write_ptr <= write_ptr + 1;
        end
    end
    
    always@(posedge clk) 
    begin
        if(read_en & !empty) begin
            data_out <= fifo[read_ptr];
            read_ptr <= read_ptr + 1;
        end
    end
    
    assign full = ((write_ptr + 1'b1) == read_ptr);
    assign empty = (write_ptr == read_ptr);
endmodule