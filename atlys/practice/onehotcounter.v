`timescale 1ns / 1ps
`default_nettype none

module onehotcounter(clk, reset, q);
    parameter width = 4;
    input  wire clk;
    input  wire reset;
    output wire [width-1:0] q;

    reg [width-1:0] data;

    assign q = data;

    always @(posedge clk) begin
        if (reset == 1) begin
            data [width-1:1] <= 0;
            data [0] <= 0;
        end else begin
            data <= {data[width-2:0], data[width-1]};
        end
    end
endmodule
