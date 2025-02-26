`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 21:44:36
// Design Name: 
// Module Name: dff_jkff
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


module d_to_jk_flipflop (
    input j, k,     // Inputs for JK Flip-Flop
    input clk,      // Clock signal
    input reset,    // Reset signal
    output reg Q    // Output
);
    wire d;         // Intermediate D input for the D Flip-Flop

    // Derive D from J and K
    assign d = (j & ~Q) | (~k & Q);

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;         // Reset the output to 0
        else
            Q <= d;         // Assign D to Q on clock edge
    end
endmodule