`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 21:18:37
// Design Name: 
// Module Name: mux2_1
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

//2*1 using ternary operator
/*module mux2_1(s,i0,i1,out);
input i0,i1;
input s;
output out;
assign out=s?i1:i0;
endmodule*/

//case statement
/*module mux2_1(s,i0,i1,out);
input i0,i1;
input s;
output reg out;
always@(*)
casex(s)
1'b0:out=i0;
1'b1:out=i1;
default:out=1'bx;
endcase
endmodule*/

//ifelse statement
module mux2_1(s,i0,i1,out);
input i0,i1;
input s;
output reg out;
always@(*)
if(s==1'b0)
out=i0;
else
out=i1;
endmodule




