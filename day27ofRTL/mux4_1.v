`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 18:16:55
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


module mux4_1(s, in, out);
  input [1:0] s;
  input [3:0] in;
  output out;

  assign out = (~s[1] & ~s[0] & in[0]) | 
               (~s[1] & s[0] & in[1])  | 
               (s[1] & ~s[0] & in[2])  | 
               (s[1] & s[0] & in[3]);

endmodule
