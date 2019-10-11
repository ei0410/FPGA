`timescale 1ns / 1ps
`default_nettype none
module mux(
	input  wire [2:0] d0,
	input  wire [2:0] d1,
	input  wire sel,
	output reg [2:0] y
    );

	always @(*) begin
		/*
		case (sel)
			1'b0: y = d0;
			1'b1: y = d1;
		endcase
		*/
		if (sel) begin
			y = d0;
		end else begin
			y = d1;
		end
	end
endmodule
