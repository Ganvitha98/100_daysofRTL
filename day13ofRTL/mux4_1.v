`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 18:11:24
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

//Behaviour Modelling
/*module mux4_1(s,in,out);
input [1:0]s;
input [3:0]in;
output reg out;
always@(*)
begin
case(s)
2'b00:out=in[0];
2'b01:out=in[1];
2'b10:out=in[2];
2'b11:out=in[3];
endcase
end
endmodule
*/
//Data Flow Level Modelling
module mux4_1(s, in, out);
  input [1:0] s;
  input [3:0] in;
  output out;

  assign out = (~s[1] & ~s[0] & in[0]) | 
               (~s[1] & s[0] & in[1])  | 
               (s[1] & ~s[0] & in[2])  | 
               (s[1] & s[0] & in[3]);

endmodule
