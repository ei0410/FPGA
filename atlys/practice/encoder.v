`timescale 1ns / 1ps
`default_nettype none

module encoder(
	input  wire [3:0] data,
	output reg  [2:0] y
	);
	
	always @(*) begin
		case (data)
			4'b0001: y = 3'b000;
			4'b0010: y = 3'b001;
			4'b0100: y = 3'b010;
			4'b1000: y = 3'b011;
			default: y = 3'b100;
		endcase
	end
endmodule
