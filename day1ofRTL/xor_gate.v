`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 23:07:10
// Design Name: 
// Module Name: xor_gate
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
/*module xor_gate(input a,b,output y);
xor(y,a,b);
endmodule

//data flow modelling 
module xor_gate(input a,b,output y);
assign y=a^b; 
endmodule*/

//behavioral modelling
module xor_gate(input a,b,output reg y);
always@(a,b)
begin
if(a==b) 
y=1'b0;
else
y=1'b1;
end
endmodule 