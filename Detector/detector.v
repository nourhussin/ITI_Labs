module detector(
    input wire clk, sequence_in, reset,

    output reg detected
    );

    localparam [2:0] A = 3'b000,
                     B = 3'b001,
                     C = 3'b010,
                     D = 3'b011,
                     E = 3'b100,
                     F = 3'b101,
                     G = 3'b110,
                     H = 3'b111;
    reg[2:0] current_state, next_state;

    always @(posedge clk) 
    begin
        if (reset)
            current_state <= A;
        else
            current_state <= next_state;
    end

    always @(current_state or sequence_in)
    begin
        detected <= 0;
        case(current_state)
        A:begin
            if(sequence_in)
                next_state <= B;
            else
                next_state <= A;
        end

        B:begin
            if(sequence_in)
                next_state <= B;
            else
                next_state <= C;
        end

        C:begin
            if(sequence_in)
                next_state <= D;
            else
                next_state <= A;
        end

        D:begin
            if(sequence_in)
                next_state <= E;
            else
                next_state <= C;
        end

        E:begin
            if(sequence_in)
                next_state <= B;
            else
                next_state <= F;
        end

        F:begin
            if(sequence_in)
                next_state <= G;
            else
                next_state <= A;
        end

        G:begin
            if(sequence_in)
                next_state <= E;
            else
                next_state <= H;
        end

        H:begin
            if(sequence_in)
            begin
                next_state <= B;
                detected <= 1'b1;
            end
            else
                next_state <= A;
        end
        endcase
    end
endmodule