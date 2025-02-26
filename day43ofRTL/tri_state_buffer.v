`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 15:27:43
// Design Name: 
// Module Name: tri_state_buffer
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


module tri_state_buffer(input a,input enable,output reg y);
always@(*)
begin
if(enable)
begin 
y=a; 
end
else 
begin
y=1'bz;
end
end
endmodule
