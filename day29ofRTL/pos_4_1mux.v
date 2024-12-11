`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 17:08:24
// Design Name: 
// Module Name: pos_4_1mux
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


module pos_4_1mux(input a,b,c,output y);
mux4_1 mux(.s0(c),
            .s1(b),
            .i0(a),
            .i1(1'b0),
            .i2(1'b1),
            .i3(1'b1),
             .out(y));
endmodule