`timescale 1ns / 1ps
`default_nettype none
module top(
	input  wire a,
	input  wire b,
	input  wire cin,
	output wire [3:0] y
	);

	wire c;
	wire s;
	
	fulladder fa(
		.a (a),
		.b (b),
		.cin (cin),
		.cout (c),
		.s (s)
	);
	
	two_four_decoder decoder(
		.data ({c, s}),
		.y (y)
	);
endmodule
