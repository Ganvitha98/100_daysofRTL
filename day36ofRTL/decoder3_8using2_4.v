`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 19:34:08
// Design Name: 
// Module Name: decoder3_8using2_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module decoder_3to8 (
    input c,          // Third input bit
    input a, b,       // First two input bits
    output y0, y1, y2, y3, y4, y5, y6, y7
);
    wire y0_d0, y1_d0, y2_d0, y3_d0; // Outputs from first decoder (c = 0)
    wire y0_d1, y1_d1, y2_d1, y3_d1; // Outputs from second decoder (c = 1)

    // Instantiate first 2-to-4 decoder for c = 0
    decoder_2to4 dec0 (
        .a(a),
        .b(b),
        .y0(y0_d0),
        .y1(y1_d0),
        .y2(y2_d0),
        .y3(y3_d0)
    );

    // Instantiate second 2-to-4 decoder for c = 1
    decoder_2to4 dec1 (
        .a(a),
        .b(b),
        .y0(y0_d1),
        .y1(y1_d1),
        .y2(y2_d1),
        .y3(y3_d1)
    );

    // Gating the outputs based on the third bit 'c'
    assign y0 = y0_d0 & (~c);
    assign y1 = y1_d0 & (~c);
    assign y2 = y2_d0 & (~c);
    assign y3 = y3_d0 & (~c);
    assign y4 = y0_d1 & c;
    assign y5 = y1_d1 & c;
    assign y6 = y2_d1 & c;
    assign y7 = y3_d1 & c;

endmodule

