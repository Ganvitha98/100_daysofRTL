`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 21:29:56
// Design Name: 
// Module Name: mux4_1using2_1mux
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


module mux4_1using2_1mux(input s0,s1,i0,i1,i2,i3,output out);
wire w1,w2;
mux2_1 M1(s0,i0,i1,w1);
mux2_1 M2(s0,i2,i3,w2);
mux2_1 M3(s1,w1,w2,out);
endmodule
