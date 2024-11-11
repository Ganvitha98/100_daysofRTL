`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 21:19:03
// Design Name: 
// Module Name: mux2_1_tb
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


module mux2_1_tb();
reg s;
reg i0,i1;
wire out;
mux2_1 DUT(s,i0,i1,out); 
initial
begin
$monitor("Input s=%b,i0=%b,i1=%b,output out=%b",s,i0,i1,out);
i0=0;i1=0;s=0;
#10;
i0=0;i1=1;s=1;
#10;
i0=1;i1=0;s=0;
#10;
i0=1;i1=1;s=1;
#10;
 $finish;
 end
endmodule
