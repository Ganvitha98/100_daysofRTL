`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2024 21:48:17
// Design Name: 
// Module Name: carry_lookahead_adder
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
//////////////////////////////////////////////////////////////////////////endmodule


module carry_lookahead_adder(
    input [3:0] a,         // 4-bit input A
    input [3:0] b,         // 4-bit input B
    input cin,             // Carry input
    output reg [3:0] sum,  // 4-bit sum output
    output reg cout        // Carry output
);

    reg [3:0] p, g;        // Propagate and generate terms
    reg [3:0] c;           // Carry terms

    always @(*) begin
        // Step 1: Generate and Propagate
        p = a ^ b;          // Propagate terms
        g = a & b;          // Generate terms

        // Step 2: Carry terms (using look-ahead logic)
        c[0] = cin;
        c[1] = g[0] | (p[0] & cin);
        c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
        c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
        cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);

        // Step 3: Sum terms
        sum = p ^ c;
    end

endmodule

