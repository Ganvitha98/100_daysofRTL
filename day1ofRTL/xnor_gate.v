`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 23:22:14
// Design Name: 
// Module Name: xnor_gate
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
//gate level modelling
/*module xnor_gate(input a,b,output y);
xnor(y,a,b);
endmodule

//data flow modelling 
module xnor_gate(input a,b,output y);
assign y=~(a^b); 
endmodule*/

//behavioral modelling
module xnor_gate(input a,b,output reg y);
always@(a,b)
begin
if(a==b) 
y=1'b1;
else
y=1'b0;
end
endmodule 


