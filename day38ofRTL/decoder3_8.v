`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 20:16:38
// Design Name: 
// Module Name: decoder3_8
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
    input c, b, a,
    output y0, y1, y2, y3, y4, y5, y6, y7
);
    assign y0 = (~c) & (~b) & (~a);
    assign y1 = (~c) & (~b) & (a);
    assign y2 = (~c) & (b) & (~a);
    assign y3 = (~c) & (b) & (a);
    assign y4 = (c) & (~b) & (~a);
    assign y5 = (c) & (~b) & (a);
    assign y6 = (c) & (b) & (~a);
    assign y7 = (c) & (b) & (a);
endmodule


