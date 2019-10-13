`timescale 1ns / 1ps

module counter4_test;

	// Inputs
	reg clk;

	// Outputs
	reg [1:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter4 uut (
		.clk(clk), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		count = 0;
		forever #1 clk = ~clk;
		// Wait 100 ns for global reset to finish
		#1;
        
		// Add stimulus here

	end
      
endmodule

