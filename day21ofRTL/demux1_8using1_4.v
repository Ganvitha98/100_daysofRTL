`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2024 18:58:07
// Design Name: 
// Module Name: demux1_8using1_4
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


module demux1_8using1_4(input in, input [2:0] sel, output [7:0] y);
    wire enable_lower,enable_upper;
    assign enable_lower=~sel[2];
    assign enable_upper=sel[2];
    demux1_4 lower(.in(in & enable_lower),
                   .sel(sel[1:0]),
                   .y(y[3:0]));
        demux1_4 upper(.in(in & enable_upper),
                   .sel(sel[1:0]),
                   .y(y[7:4]));
   endmodule
