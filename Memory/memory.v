module memory (
    input wire clk, read_en, write_en, reset,
    input wire[2:0] address,
    input wire[7:0] data_in,
    output reg[7:0] data_out,
    output reg full_flag, empty_flag
);
    reg[7:0] MEM[7:0];
    reg[7:0] f_f;
    integer i;

    always@(posedge clk)
    begin
        full_flag <=0;
        empty_flag<=0;
        
        if (reset)
        begin
            for(i=0; i<8; i=i+1)
            begin
                 MEM[i] <= 0;
            end
            empty_flag <= 1;
        end
        else
        begin
            if(read_en)
                data_out <= MEM[address];
            else if(write_en)
            begin
                MEM[address] <= data_in;
                f_f[address] <= 1'b1;
            end
        end

        if(f_f==8'b1111_1111)
            full_flag <= 1;            
    end

    
endmodule