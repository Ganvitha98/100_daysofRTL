`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 18:44:52
// Design Name: 
// Module Name: sr_latch_nor_tb
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


module srlatch_tb(); 
reg s,r; wire q,qbar; 
srlatch dut(s,r,q,qbar); 
task initialize; 
begin 
s=0; 
r=0; 
end 
endtask 
task inputs(input j,input k); 
begin 
s=j; 
r=k; 
end 
endtask 
initial 
begin 
initialize; 
#10; 
inputs(1'b1,1'b1); 
#10; 
inputs(1'b0,1'b1); 
#10; 
inputs(1'b1,1'b0); 
#10; 
inputs(1'b0,1'b0); 
end 
initial 
$monitor($time,"inputs S=%b R=%b outputs Q=%b QBAR=%b",s,r,q,qbar); initial #100 $finish; 
endmodule
