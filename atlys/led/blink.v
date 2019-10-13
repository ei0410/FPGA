`timescale 1ns / 1ps
`default_nettype none

module blink(
	input  wire clk,
	output wire led
    );
	
	reg [26:0] cnt;
	assign led = cnt[26];
	
	always @(posedge clk) begin
		if (clk == 27'd99999999) begin
			cnt <= 0;
		end else begin
			cnt <= cnt + 1'b1;
		end
	end
endmodule
