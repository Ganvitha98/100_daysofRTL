`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2024 19:22:53
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();
reg a,b,bin;
wire diff,borrow;
full_subtractor DUT(a,b,bin,diff,borrow);
initial
begin
a=1'b0;
b=1'b0;
bin=1'b0;
end 
//for a every 4steps it is changing from 0-1,for b -2steps,foe bin 1step
always #4 a=a+1'b1;
always #2 b=b+1'b1;
always #1 bin=bin+1'b1;
initial
$monitor("input a=%b,b=%b,bin=%b, output diff=%b,borrow=%b",a,b,bin,diff,borrow);
initial 
#50 $finish; 
endmodule
