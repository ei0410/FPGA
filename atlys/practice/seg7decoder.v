`timescale 1ns / 1ps
`default_nettype none

module seg7decoder(data, q);
    input  wire [3:0] data;
    output wire [7:0] q;

    wire [7:0] nq;

    assign q = nq;

    assign nq = (data == 4'h0) ? 8'b00111111 :
                (data == 4'h1) ? 8'b00000110 :
                (data == 4'h2) ? 8'b01011011 :
                (data == 4'h3) ? 8'b01001111 :
                (data == 4'h4) ? 8'b01100110 :
                (data == 4'h5) ? 8'b01101101 :
                (data == 4'h6) ? 8'b01111101 :
                (data == 4'h7) ? 8'b00000111 :
                (data == 4'h8) ? 8'b01111111 :
                (data == 4'h9) ? 8'b01101111 :
                (data == 4'hA) ? 8'b01110111 :
                (data == 4'hB) ? 8'b01111100 :
                (data == 4'hC) ? 8'b00111001 :
                (data == 4'hD) ? 8'b01011110 :
                (data == 4'hE) ? 8'b01111001 :
                (data == 4'hF) ? 8'b01110001 :
                8'b10000000;
endmodule
