`timescale 1ns / 1ps
`default_nettype none

module audio(
    input  wire clk,
    input  wire btn,
    output wire spkr
    );

    reg [31:0] cnt;

    always @(posedge clk) begin
        if (cnt == 32'd113636)
            cnt <= 32'd0;
        else
            cnt <= cnt + 32'd1;
    end

    assign spkr = btn && (cnt < 56818);

endmodule
