`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 21:16:57
// Design Name: 
// Module Name: syn4_bit3to12
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


module sync_counter (
    input clk,       // Clock signal
    input reset,     // Active-high synchronous reset
    output reg [3:0] count // 4-bit output
);

    // Initialize counter to 3
    always @(posedge clk) begin
        if (reset)
            count <= 4'd3; // Reset counter to 3
        else if (count == 4'd12)
            count <= 4'd3; // Reset to 3 when reaching 12
        else
            count <= count + 1; // Increment count
    end

endmodule
