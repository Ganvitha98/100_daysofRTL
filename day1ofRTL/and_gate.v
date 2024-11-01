`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 21:57:51
// Design Name: 
// Module Name: 
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
//////////////////////////////////////////////////////////////////////////////
//And gate
//Gate level Modelling
module and_gate(input a,b output y);
and(y,a,b);
endmodule

//Data flow modelling
module and_gate(input a,b output y);
assign y=a&b;
endmodule

//Behavioral Modelling
module and_gate(a,b,y);
input a,b; 
output reg y; 
always@(a,b)
begin
if (a==1'b1 & b==1'b1)
begin
y=1'b1;
end
else  
y=1'b0;
end
endmodule



