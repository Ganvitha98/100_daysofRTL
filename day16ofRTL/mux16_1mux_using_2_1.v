`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2024 21:57:25
// Design Name: 
// Module Name: mux16_1mux_using_2_1
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
module mux16_1mux_using2_1 (
    input [3:0] s,     
    input [15:0] in,   
    output out         
);
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10; 

    
    mux2_1 mux0 (.s(s[0]), .in({in[1], in[0]}), .out(w1));
    mux2_1 mux1 (.s(s[0]), .in({in[3], in[2]}), .out(w2));
    mux2_1 mux2 (.s(s[0]), .in({in[5], in[4]}), .out(w3));
    mux2_1 mux3 (.s(s[0]), .in({in[7], in[6]}), .out(w4));
    mux2_1 mux4 (.s(s[0]), .in({in[9], in[8]}), .out(w5));
    mux2_1 mux5 (.s(s[0]), .in({in[11], in[10]}), .out(w6));
    mux2_1 mux6 (.s(s[0]), .in({in[13], in[12]}), .out(w7));
    mux2_1 mux7 (.s(s[0]), .in({in[15], in[14]}), .out(w8));


    mux2_1 mux8 (.s(s[1]), .in({w2, w1}), .out(w9));
    mux2_1 mux9 (.s(s[1]), .in({w4, w3}), .out(w10));
    mux2_1 mux10 (.s(s[1]), .in({w6, w5}), .out(w11));
    mux2_1 mux11 (.s(s[1]), .in({w8, w7}), .out(w12));

   
    mux2_1 mux12 (.s(s[2]), .in({w10, w9}), .out(w13));
    mux2_1 mux13 (.s(s[2]), .in({w12, w11}), .out(w14));

    
    mux2_1 mux14 (.s(s[3]), .in({w14, w13}), .out(out));
endmodule
