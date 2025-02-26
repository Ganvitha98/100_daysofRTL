`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 19:27:43
// Design Name: 
// Module Name: sr_ff_dff
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


module sr_to_d_flipflop (
    input wire clk,     // Clock signal
    input wire reset,   // Asynchronous reset
    input wire D,       // Data input
    output reg Q        // Output Q
);
    wire S, R;

    // Generate S and R from D
    assign S = D;
    assign R = ~D;

    // SR Flip-Flop logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0; // Reset output to 0
        end else begin
            case ({S, R})
                2'b00: Q <= Q;       // No change
                2'b01: Q <= 1'b0;    // Reset
                2'b10: Q <= 1'b1;    // Set
                2'b11: Q <= 1'bx;    // Invalid condition (not possible for D Flip-Flop)
            endcase
        end
    end
endmodule
