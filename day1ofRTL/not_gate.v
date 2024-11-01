`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 22:06:52
// Design Name: 
// Module Name: not_gate
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

///gate level modelling
module not_gate(input a,output y);
not(y,a); 
endmodule/*

//data flow modelling
module not_gate(input a,output y);
assign y=~a;
endmodule

//behavioral modelling
module not_gate(input a,output reg y);
always@(a) 
begin
if(a==1'b0)
begin
y=1'b1;
end 
else if (a==1'b1)
begin 
y=1'b0;
end
end 
endmodule*/