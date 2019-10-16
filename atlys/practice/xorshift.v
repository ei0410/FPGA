`timescale 1ns / 1ps
`default_nettype none

module xorshift(clk, reset, q);
    input  wire clk;
    input  wire reset;
    output wire [31:0] q;

    reg [31:0] y, y0, y1;

    assign q = y;

    always @(posedge clk) begin
        if (reset == 1'b1) begin
            y <= {16'd37590, 16'd36002};
        end else begin
            y0 = y ^ {y[18:0], 13'b0};
            y1 = y0 ^ {17'd0, y0[31:17]};
            y <= y1 ^ {y1[26:0], 5'b0};
        end
    end
endmodule
