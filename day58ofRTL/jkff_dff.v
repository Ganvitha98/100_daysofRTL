`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 20:16:58
// Design Name: 
// Module Name: jkff_dff
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


module jk_to_d_flipflop (
    input wire clk,     // Clock signal
    input wire reset,   // Asynchronous reset
    input wire D,       // Data input
    output reg Q        // Output Q
);
    wire J, K;

    // Map D to J and K
    assign J = D;
    assign K = ~D;

    // JK Flip-Flop logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0; // Reset Q to 0
        end else begin
            case ({J, K})
                2'b00: Q <= Q;       // Hold state
                2'b01: Q <= 1'b0;    // Reset
                2'b10: Q <= 1'b1;    // Set
                2'b11: Q <= ~Q;      // Toggle (not applicable for D Flip-Flop logic)
            endcase
        end
    end
endmodule
