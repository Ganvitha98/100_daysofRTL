`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 18:56:38
// Design Name: 
// Module Name: sop_8_1
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


module sop_8_1(input a,b,c,d,output y);
mux8_1 mux(.s0(c),
           .s1(b),
           .s2(a),
           .i0(d),
           .i1(d),
           .i2(~d),
           .i3(1'b0),
           .i4(1'b0),
           .i5(d),
           .i6(1'b1),
           .i7(1'b1),
           .out(y));
endmodule
