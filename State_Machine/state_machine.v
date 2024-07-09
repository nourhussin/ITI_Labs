module state_machine(
    input wire taken, reset, clk,

    output reg predict
    );

    reg[1:0] current_state, next_state;

    always @(posedge clk) 
    begin
        if(reset)
            current_state <= 0;
        else
            current_state <= next_state;
    end

    always @(current_state or taken)
    begin
        case(current_state)
        2'b00:
        begin
            predict <= 1'b1;
            if(taken)
                next_state <= 2'b00;
            else
                next_state <= 2'b01;
        end
        2'b01:
        begin
            predict <= 1'b1;
            if(taken)
                next_state <= 2'b00;
            else
                next_state <= 2'b10;
        end
        2'b10:
        begin
            predict <= 1'b0;
            if(taken)
                next_state <= 2'b11;
            else
                next_state <= 2'b10;
        end
        2'b11:
        begin
            predict <= 1'b0;
            if(taken)
                next_state <= 2'b00;
            else
                next_state <= 2'b10;
        end
        endcase
    end
endmodule