`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 17:34:06
// Design Name: 
// Module Name: mux8_1
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


module mux8_1(s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,out);
input s0,s1,s2;
input i0,i1,i2,i3,i4,i5,i6,i7;
output reg out;
always@(*)
begin
case({s2,s1,s0})
3'b000:out=i0;
3'b001:out=i1;
3'b010:out=i2;
3'b011:out=i3;
3'b100:out=i4;
3'b101:out=i5;
3'b110:out=i6;
3'b111:out=i7;
default:out=1'b0;
endcase
end
endmodule

