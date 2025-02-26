`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 19:54:14
// Design Name: 
// Module Name: decoder2_4
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


module decoder_2to4 (
    input a, b,      
    output y0, y1, y2, y3
);

    assign y0 = (~a) & (~b);
    assign y1 = (~a) & (b);
    assign y2 = (a) & (~b);
    assign y3 = (a) & (b); 
   
endmodule
