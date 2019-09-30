`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:59 09/30/2019 
// Design Name: 
// Module Name:    led 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module led(clk, out);
	input wire clk;
	output wire out;
	
	reg [23:0] counter = 24'h000000;
	reg flag;
	assign out = flag;
	
	always @(posedge clk) begin
		counter <= counter + 1'b1;
		if (counter == 0) flag = !flag;
	end
endmodule
