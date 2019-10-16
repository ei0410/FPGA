`timescale 10ns / 1ps
`default_nettype none

module xorshift_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] q;

	// Instantiate the Unit Under Test (UUT)
	xorshift uut (
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
		clk = 0;
		reset = 0;
		forever #1 clk = !clk;
	end

	initial begin
		reset = 0;
		#3;
		reset = 1;
		#3;
		reset = 0;
	end
endmodule

