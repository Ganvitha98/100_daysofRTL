`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 17:08:46
// Design Name: 
// Module Name: mux4_1
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



module mux4_1(s0,s1,i0,i1,i2,i3,out);
input s0,s1;
input i0,i1,i2,i3;
output out;
  assign out = (~s1 & ~s0 & i0) | 
               (~s1 & s0 & i1)  | 
               (s1 & ~s0 & i2)  | 
               (s1 & s0 & i3);

endmodule
