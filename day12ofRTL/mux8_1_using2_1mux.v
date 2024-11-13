`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2024 21:37:06
// Design Name: 
// Module Name: mux8_1_using2_1mux
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


module mux8_1_using2_1 (
    input [2:0] s,     // 3-bit select signal
    input [7:0] in,    // 8 input signals
    output out         // Output of the 8-to-1 mux
);
    wire w1, w2, w3, w4, w5, w6; // Internal wires to connect the layers of multiplexers

    // First layer of 2-to-1 multiplexers (4 instances)
    mux2_1 mux0 (.s(s[0]), .in({in[1], in[0]}), .out(w1));
    mux2_1 mux1 (.s(s[0]), .in({in[3], in[2]}), .out(w2));
    mux2_1 mux2 (.s(s[0]), .in({in[5], in[4]}), .out(w3));
    mux2_1 mux3 (.s(s[0]), .in({in[7], in[6]}), .out(w4));

    // Second layer of 2-to-1 multiplexers (2 instances)
    mux2_1 mux4 (.s(s[1]), .in({w2, w1}), .out(w5));
    mux2_1 mux5 (.s(s[1]), .in({w4, w3}), .out(w6));

    // Final layer of 2-to-1 multiplexer (1 instance)
    mux2_1 mux6 (.s(s[2]), .in({w6, w5}), .out(out));
endmodule

