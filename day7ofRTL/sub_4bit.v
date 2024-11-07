`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2024 19:26:30
// Design Name: 
// Module Name: sub_4bit
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


module sub_4bit(a,b,bin,diff,bout);
input[3:0]a,b;
input bin;
output [3:0]diff;
output bout;
wire[2:0]bi;
full_adder sub1(a[0],~b[0],bin,diff[0],bi[0]);
full_adder sub2(a[1],~b[1],bi[0],diff[1],bi[1]);
full_adder sub3(a[2],~b[2],bi[1],diff[2],bi[2]);
full_adder sub4(a[3],~b[3],bi[2],diff[3],bout);
endmodule
