`timescale 1ns / 1ps
`default_nettype none

module counter4(
    input  wire clk,
    output wire [1:0] count
    );

    reg [1:0] count_down;

    always @(posedge clk) begin
        if (count_down >= 2'b11) begin
            count_down <= 2'b00;
        end else begin
            count_down <= count_down + 1'b1;
        end
    end

    assign count = count_down;
endmodule
