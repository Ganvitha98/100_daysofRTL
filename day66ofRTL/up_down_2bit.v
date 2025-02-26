`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2025 21:00:16
// Design Name: 
// Module Name: up_down_2bit
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


module up_down_2bit(input clk,input rst,input mode,output reg [1:0]q);
always@(posedge clk or posedge rst)
 begin
   if(rst)
     q<= 2'b00;
   else if(mode)
     q <= q + 1'b1;
    else
      q<= q - 1'b1;
 end
endmodule        

