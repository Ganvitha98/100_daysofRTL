`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 20:14:40
// Design Name: 
// Module Name: decoder4_16_using3_8
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

module decoder_4to16 (
    input d, c, b, a,        // 4 input bits
    output y0, y1, y2, y3, y4, y5, y6, y7, // Outputs 0 to 7
           y8, y9, y10, y11, y12, y13, y14, y15 // Outputs 8 to 15
);
    wire [7:0] lower, upper; // Intermediate outputs from the two 3-to-8 decoders

    // Instantiate the lower 3-to-8 decoder (d = 0)
    decoder_3to8 lower_decoder (
        .c(c), .b(b), .a(a),
        .y0(lower[0]), .y1(lower[1]), .y2(lower[2]), .y3(lower[3]),
        .y4(lower[4]), .y5(lower[5]), .y6(lower[6]), .y7(lower[7])
    );

    // Instantiate the upper 3-to-8 decoder (d = 1)
    decoder_3to8 upper_decoder (
        .c(c), .b(b), .a(a),
        .y0(upper[0]), .y1(upper[1]), .y2(upper[2]), .y3(upper[3]),
        .y4(upper[4]), .y5(upper[5]), .y6(upper[6]), .y7(upper[7])
    );

    // Enable outputs based on MSB (d)
    assign y0  = lower[0] & ~d;
    assign y1  = lower[1] & ~d;
    assign y2  = lower[2] & ~d;
    assign y3  = lower[3] & ~d;
    assign y4  = lower[4] & ~d;
    assign y5  = lower[5] & ~d;
    assign y6  = lower[6] & ~d;
    assign y7  = lower[7] & ~d;

    assign y8  = upper[0] & d;
    assign y9  = upper[1] & d;
    assign y10 = upper[2] & d;
    assign y11 = upper[3] & d;
    assign y12 = upper[4] & d;
    assign y13 = upper[5] & d;
    assign y14 = upper[6] & d;
    assign y15 = upper[7] & d;

endmodule

