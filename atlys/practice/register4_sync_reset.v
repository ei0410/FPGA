`timescale 1ns / 1ps
`default_nettype none

module register4_sync_reset(
	input  wire clk,
	input  wire reset,
	input  wire [3:0] data,
	output reg [3:0] q
    );
	 
	always @ (posedge clk) begin
		if (reset == 1'b0) begin
			q <= 4'b0;
		end else begin
			q <= data;
		end
	end
endmodule
