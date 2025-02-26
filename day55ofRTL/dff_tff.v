`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 19:47:51
// Design Name: 
// Module Name: dff_tff
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


module dff_to_tff (
    input wire clk,     // Clock signal
    input wire reset,   // Asynchronous reset
    input wire T,       // Toggle input
    output reg Q        // Output Q
);
    wire D;

    // D Flip-Flop logic for T Flip-Flop
    assign D = T ^ Q; // D = T XOR Q

    // D Flip-Flop
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0; // Reset Q to 0
        end else begin
            Q <= D; // Capture the value of D on clock's rising edge
        end
    end
endmodule
