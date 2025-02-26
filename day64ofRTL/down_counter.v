`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 20:19:05
// Design Name: 
// Module Name: down_counter
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


module async_down_counter (
    input wire clk,       // Clock input
    input wire reset,     // Asynchronous reset input
    output reg [2:0] count // 3-bit counter output
);

    // Asynchronous reset
    always @(posedge clk or posedge reset) begin
        if (reset) 
            count <= 3'b111;  // Reset to maximum value (7 for 3-bit)
        else 
            count <= count - 1;  // Decrement counter
    end

endmodule
