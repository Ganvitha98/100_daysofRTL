`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 20:15:31
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg a,b; 
wire sum,carry;
integer i;
half_adder DUT(a,b,sum,carry);
initial 
begin
a=1'b0; 
b=1'b0; 
end 
initial
begin
for(i=0;i<4;i=i+1)
 begin
  {a,b}=i; 
  #10;
 end   
#20  $finish;
end
  initial
  $monitor("Input a=%b,b=%b, Output sum=%b,carry=%b",a,b,sum,carry);
  endmodule






