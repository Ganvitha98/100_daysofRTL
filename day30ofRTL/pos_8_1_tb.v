`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 17:44:28
// Design Name: 
// Module Name: pos_4_1_tb
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


module pos_8_1mux_tb;
   
reg a,b,c; 
wire y;
integer i;
pos_8_1mux DUT(a,b,c,y);
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
  $monitor("Input a=%b,b=%b,c=%b, Output y=%b",a,b,c,y);
  endmodule

