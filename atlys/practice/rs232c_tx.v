`timescale 1ns / 1ps
`default_nettype none

module rs232c_tx(clk, rst, wr, din, dout, ready);
    parameter sys_clk = 14000000;
	parameter rate = 9600;
	input  wire clk;
	input  wire rst;
	input  wire wr;
	input  wire [7:0] din;
	output reg dout;
	output wire ready;
	 
	reg [7:0] in_din;
	reg load;
	reg [2:0] cbit;
	reg run;
	 
	wire tx_en;
	wire [15:0] tx_div;
	 
	reg [3:0] status;
	 
	assign ready = (run == 0 && load == 0) ? 1'b1 : 1'b0;
	 
	assign tx_div = ((sys_clk / rate) - 1);
	clk_div div(
	    .clk(clk),
		.rst(rst),
		.div(tx_div),
		.clk_out(tx_en)
	);
	 
	always @(posedge clk or posedge rst) begin
	    if (rst == 1) begin
		    load <= 0;
		end else begin
		    if (wr == 1 && run == 0) begin
				load <= 1;
				in_din <= din;
			end
			if (load == 1 && run == 1) begin
				load <= 0;
			end
		end
	end
	 
	always @(posedge tx_en or posedge rst) begin
	    if (rst == 1) begin
		    dout <= 1;
			cbit <= 0;
			run <= 0;
			status <= 0;
		end else begin
			if (status == 0) begin
				if (load == 1) begin
					dout <= 0;
					cbit <= 0;
					run <= 1;
					status <= 1;
				end else begin
					dout <= 1;
					run <= 0;
				end
			end else if (status == 1) begin
				if (cbit == 7) begin
					status <= 2;
				end
				cbit <= cbit + 1'b1;
				dout <= in_din[cbit];
			end else if (status == 2) begin
				status <= 0;
				dout <= 1;
			end else begin
				dout <= 1;
				status <= 0;
			end
		end
	end
endmodule
