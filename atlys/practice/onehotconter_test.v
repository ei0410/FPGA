`timescale 10ns / 1ps
`default_nettype none

module onehotconter_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	onehotcounter uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		forever #1 clk = !clk;
	end

	initial begin
		reset = 0;
		#4;
		reset = 1;
		#2;
		reset = 0;
		#2;
	end
endmodule

