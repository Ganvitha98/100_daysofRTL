`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2024 23:02:24
// Design Name: 
// Module Name: and_gate_tb
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


module and_gate_tb();
reg a,b; 
wire y;
and_gate DUT(a,b,y); 
initial
begin
$monitor($time,"a=%b,b=%b,y=%b",a,b,y);
a=0;b=0;#20;
a=0;b=1;#20;
a=1;b=0;#20;
a=1;b=1;#20;
end
endmodule
