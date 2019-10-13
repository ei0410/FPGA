`timescale 1ns / 1ps

module register4_async_reset_test;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] data;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	register4_async_reset uut (
		.clk(clk), 
		.reset(reset), 
		.data(data), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		data = 0;

		// Wait 100 ns for global reset to finish
		#1;
        
		// Add stimulus here
		clk = 1;
		reset = 1;
		data = 4'b1010;
		#1;

		clk = 0;
		reset = 1;
		data = 4'b1010;
		#1;

		clk = 1;
		reset = 1;
		data = 4'b1010;
		#1;

		clk = 0;
		reset = 0;
		data = 4'b1010;
		#1;

		clk = 1;
		reset = 0;
		data = 4'b1010;
		#1;

		clk = 0;
		reset = 1;
		data = 4'b1010;
		#1;

		clk = 1;
		reset = 1;
		data = 4'b1010;
		#1;
	end
      
endmodule

