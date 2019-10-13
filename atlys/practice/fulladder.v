`timescale 1ns / 1ps
`default_nettype none
module fulladder(
	input  wire a,
	input  wire b,
	input  wire cin,
	output wire cout,
	output wire s
    );
	
	wire s0;
	wire c0;
	wire c1;
	
	halfadder ha1(
		.a(a),
		.b(b),
		.c(c0),
		.s(s0)
	);
	
	halfadder ha0(
		.a(s0),
		.b(cin),
		.c(c1),
		.s(s)
	);
	
	assign cout = c1 | c0;
endmodule
