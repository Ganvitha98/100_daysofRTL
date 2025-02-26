`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 19:12:32
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop (
    input wire clk,     // Clock signal
    input wire reset,   // Asynchronous reset signal
    input wire T,       // Toggle input
    output reg Q        // Output Q
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0; // Reset Q to 0
        end else begin
            if (T) begin
                Q <= ~Q; // Toggle Q when T is 1
            end
        end
    end
endmodule
