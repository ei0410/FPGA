`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:51:00 10/01/2019
// Design Name:   led
// Module Name:   C:/Xilinx/FPGA/led/testOR.v
// Project Name:  led
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testOR;

	// Inputs
	reg sw0;
	reg sw1;
	reg sw2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	led uut (
		.sw0(sw0), 
		.sw1(sw1), 
		.sw2(sw2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		sw0 = 0;
		sw1 = 0;
		sw2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin
		sw0 = 0;
	#1 sw0 = 1;
	#1;
	end
      
endmodule

