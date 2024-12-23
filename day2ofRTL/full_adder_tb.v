`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 21:20:48
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a,b,cin; 
wire sum,carry;
integer i;
full_adder DUT(a,b,cin,sum,carry);
initial 
begin
a=1'b0; 
b=1'b0;
cin=1'b0; 
end 
initial
begin
for(i=0;i<8;i=i+1)
 begin
  {a,b,cin}=i; 
  #10;
 end   
#20  $finish;
end
  initial
  $monitor("Input a=%b,b=%b,cin=%b, Output sum=%b,carry=%b",a,b,cin,sum,carry);
  endmodule


