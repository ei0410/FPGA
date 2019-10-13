`timescale 1ns / 1ps

module register4_sync_reset_test;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] data;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	register4_sync_reset uut (
		.clk(clk), 
		.reset(reset), 
		.data(data), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 0;
		reset = 0;
		data = 1;
		#1;
		clk = 1;
		reset = 0;
		data = 3;
		#1;
		clk = 2;
		reset = 0;
		data = 7;
		#1;
		clk = 3;
		reset = 0;
		data = 15;
		#1;
		clk = 3;
		reset = 1;
		data = 15;
		#1;
		clk = 3;
		reset = 0;
		data = 15;
		#1;
	end
      
endmodule

