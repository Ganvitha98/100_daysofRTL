`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 22:11:02
// Design Name: 
// Module Name: tff_jkff
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


module t_to_jk_flipflop (
    input j, k,     // Inputs for JK Flip-Flop
    input clk,      // Clock signal
    input reset,    // Reset signal
    output reg Q    // Output
);
    wire T;

    // Map T to JK inputs
    assign T = (j & ~Q) | (k & Q);

    // JK flip-flop with asynchronous reset
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;    // Reset the output to 0
        else begin
            case ({j, k})
                2'b00: Q <= Q;      // No change
                2'b01: Q <= 0;      // Reset
                2'b10: Q <= 1;      // Set
                2'b11: Q <= ~Q;     // Toggle
            endcase
        end
    end
endmodule
