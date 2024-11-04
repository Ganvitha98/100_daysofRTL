`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2024 18:37:30
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb();
reg a,b;
wire diff,borrow; 
//instantiation
half_subtractor DUT(a,b,diff,borrow);
initial 
begin
//initializing the inputs
a=0;
b=0;
 #5 a=1'b0;b=1'b1;
 #5 a=1'b1;b=1'b0;
 #5 a=1'b1;b=1'b1;
 end 
initial
$monitor ("Input a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
initial
#100 $finish;
endmodule
