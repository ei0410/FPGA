`timescale 1ns / 1ps

module halfadder(a, b, c, s);
	input  wire a;
	input  wire b;
	output wire c;
	output wire s;
	
	//assign c = a & b;
	//assign s = a ^ b;
	
	//wire [1:0] sum;
	
	//assign sum = a + b;
	//assign {c, s} = sum;
	
	reg [1:0] sum;
	
	always @(*) begin
		case({a, b})
			2'b00: sum = 2'b00;
			2'b01: sum = 2'b01;
			2'b10: sum = 2'b01;
			2'b11: sum = 2'b10;
		endcase
	end
	
	assign {c, s} = sum;
endmodule
