`include "synchronizer.v"
module async_fifo#(parameter width = 32, depth = 45)(

    input wire write_clk, read_clk, write_resetn, read_resetn, write_enable, read_enable,
    input wire[width-1 : 0] write_data,

    output reg full_flag, empty_flag,
    output reg [width-1 : 0] read_data
    );

  
    reg [$clog2(depth)-1:0] write_ptr, read_ptr;
    reg [width-1:0] fifo [0:depth-1];
    
    // In the next 2 always blocks, we suppose that the two resets come together
    // If one of them only comes, it will cause some issues in the reading or writing operation
    // To solve this issue check comments in the next lines
    always@(posedge write_clk, negedge write_resetn) 
    begin
        if(!write_resetn) // or with read_resetn  to solve the issue mentioned above
        begin
            write_ptr <= 0;
            full_flag <= 0;
        end
    end

    always@(posedge read_clk, negedge read_resetn) 
    begin
        if(!read_resetn) // or with write_resetn to solve the issue mentioned above
        begin
            read_ptr <= 0;
            empty_flag <= 1;
            read_data <= 0;
        end
    end
    
    always@(posedge write_clk) 
    begin
        if(write_enable & !full_flag)
        begin
            fifo[write_ptr] <= write_data;
            if(write_ptr == depth - 1)
                write_ptr <= 0;
            else
                write_ptr <= write_ptr + 1;
        end
    end
    
    always@(posedge read_clk) 
    begin
        if(read_enable & !empty_flag) 
        begin
            read_data <= fifo[read_ptr];
            if(read_ptr == depth - 1)
                read_ptr <= 0;
            else
                read_ptr <= read_ptr + 1;
        end
    end
    



endmodule