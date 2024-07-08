module counter#(parameter width = 4)(
	input wire control, reset, clk,
	output reg [width-1 : 0] q
	);

	always@(posedge clk)
	begin
		if (reset)
			q <= 0;
		else if (control)
			q <= q + 1;
		else
			q <= q - 1;
	end

endmodule
