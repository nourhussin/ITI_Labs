`include "state_machine.v"
module state_machine_tb;

    localparam T = 10;
    reg clk = 0;

    reg taken, reset;

    wire predict;

    state_machine DUT(
        .clk(clk),
        .taken(taken),
        .reset(reset),
        .predict(predict)
    );

    always#(T/2) clk = ~clk;

    initial begin
        reset = 1;
        taken = 0;
        #T;

        reset = 0;
        #(5*T);

        taken = 1;
        #(5*T);
        $monitor("Input taken = %b and output predict = %b",taken,predict);
    end
endmodule