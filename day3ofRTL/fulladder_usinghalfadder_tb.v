`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2024 17:09:40
// Design Name: 
// Module Name: fulladder_usinghalfadder_tb
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


module fulladder_usinghalfadder_tb();
reg a,b,c; 
wire sum,carry;
integer i;
fulladder_usinghalfadders DUT(a,b,c,sum,carry);
initial 
begin
a=1'b0; 
b=1'b0;
c=1'b0; 
end 
initial
begin
for(i=0;i<8;i=i+1)
 begin
  {a,b,c}=i; 
  #10;
 end   
#100  $finish;
end
  initial
  $monitor("Input a=%b,b=%b,c=%b, Output sum=%b,carry=%b",a,b,c,sum,carry);
  endmodule


