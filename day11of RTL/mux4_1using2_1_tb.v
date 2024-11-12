`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2024 21:31:03
// Design Name: 
// Module Name: mux4_1using2_1_tb
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


module mux4_1using2_1_tb();
reg s0,s1;
reg i0,i1,i2,i3;
wire out;
integer i;
mux4_1using2_1mux DUT(s0,s1,i0,i1,i2,i3,out);
initial
begin
i0=2'd0;i1=2'd1;i2=2'd2;i3=2'd3;
{s1,s0}=2'b00;
end 
initial
begin
for(i=0;i<4;i=i+1)
begin
{s1,s0}=i;
#10;
end 
end
initial
$monitor("Input s0=%b,s1=%b,i0=%b,i1=%b,i2=%b,i3=%b, output out=%b",s0,s1,i0,i1,i2,i3,out);
initial
#500 $finish;
endmodule
