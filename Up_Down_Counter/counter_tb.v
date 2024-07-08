`include"counter.v"
module counter_tb #(parameter w = 4);
	reg control, reset, clk;
	wire[w-1 : 0] q;
	
	counter C1 (.control(control),
					.reset(reset),
					.clk(clk),
					.q(q)
					);
	
	localparam T = 5;
    initial begin
        clk = 0;
        forever begin
            #(T/2); clk = !clk;
        end
    end
	 
	 initial begin
		reset = 1;
		control = 1;
		#5;
		reset = 0;
		
		#100;
		control = 0;
		#100;
		$stop;
	 end

endmodule