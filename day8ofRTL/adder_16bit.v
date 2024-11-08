`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 21:11:03
// Design Name: 
// Module Name: adder_16bit
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


module adder_16bit(a,b,cin,sum,cout);
input [15:0]a,b; 
input cin;
output reg cout;
output reg[15:0]sum;
always@(a or b or cin)
{cout,sum}=a+b+cin;
//assign {cout,sum}=a+b+cin;
endmodule
