`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2024 20:08:39
// Design Name: 
// Module Name: sub_4bit_tb
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


module sub_4bit_tb();
reg [3:0]a,b;
reg bin; 
wire[3:0]diff;
wire bout;
integer i;
sub_4bit DUT(a,b,bin,diff,bout);
initial
begin
a=1'b0;b=1'b0;bin=1'b0;
end
initial
begin
for(i=0;i<512;i=i+1)
begin
{a,b}=i;
#10;
end
end
initial
begin
$monitor("Input a=%b,b=%b,bin=%b,Output diff=%b,bout=%b",a,b,bin,diff,bout);
#500 $finish;
end
endmodule

