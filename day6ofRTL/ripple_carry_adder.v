`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2024 20:11:33
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(a,b,cin,sum,cout);
input [3:0]a,b; 
input cin;
output cout;
output [3:0]sum;
wire[2:0]w;
full_adder A1(a[0],b[0],cin,sum[0],w[0]);
full_adder A2(a[1],b[1],w[0],sum[1],w[1]);
full_adder A3(a[2],b[2],w[1],sum[2],w[2]);
full_adder A4(a[3],b[3],w[2],sum[3],cout);
endmodule
 
