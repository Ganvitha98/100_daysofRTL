`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 23:22:48
// Design Name: 
// Module Name: xnor_gate_tb
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


module xnor_gate_tb();
reg a,b; 
wire y;
xnor_gate DUT(a,b,y);
initial
begin
$monitor($time,"a=%b,b=%b,y=%b",a,b,y);
a=0;b=0;#20;
a=0;b=1;#20;
a=1;b=0;#20;
a=1;b=1;#20;
end
endmodule 

