`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2024 18:34:28
// Design Name: 
// Module Name: encoder4_2
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


module encoder4_2(input [3:0]d,output reg [1:0]y);
always@(d)
begin
case(d)
4'b0001:y=2'b00;
4'b0010:y=2'b01;
4'b0100:y=2'b10;
4'b1000:y=2'b11;
default:y=2'b00;
endcase
end
endmodule
