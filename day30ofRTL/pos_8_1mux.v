`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 17:33:28
// Design Name: 
// Module Name: pos_8_1mux
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


module pos_8_1mux(input a,b,c,output y);
mux8_1 mux(.s0(c),
           .s1(b),
           .s2(a),
            .i0(1'b0),
            .i1(1'b0),
             .i2(1'b1),
             .i3(1'b0),
             .i4(1'b1),
             .i5(1'b0),
             .i6(1'b1),
             .i7(1'b0),
             .out(y));
endmodule
