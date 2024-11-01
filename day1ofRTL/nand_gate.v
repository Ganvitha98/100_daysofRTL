`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 22:33:51
// Design Name: 
// Module Name: nand_gate
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



//NAnd gate
//Gate level Modelling
module nand_gate(input a,b output y);
nand(y,a,b);
endmodule

//Data flow modelling
/*module nand_gate(input a,b output y);
assign y=~(a&b);
endmodule 

//Behavioral Modelling
module nand_gate(a,b,y);
input a,b; 
output reg y; 
always@(a,b)
begin
if (a==1'b1 & b==1'b1)
begin
y=1'b0;
end
else  
y=1'b1;
end
endmodule*/

