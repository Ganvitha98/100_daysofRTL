`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 21:14:19
// Design Name: 
// Module Name: jkff_tff
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


module jk_to_t_flipflop (
    input T,       // Toggle input
    input clk,     // Clock signal
    input reset,   // Reset signal
    output reg Q   // Output
);
    wire J, K;
    
    // Map T to J and K inputs of the JK Flip-Flop
    assign J = T;
    assign K = T;

    always @(posedge clk or posedge reset) begin
        if (reset) 
            Q <= 0;  // Reset the output to 0
        else begin
            case ({J, K})
                2'b00: Q <= Q;      // No change
                2'b01: Q <= 0;      // Reset
                2'b10: Q <= 1;      // Set
                2'b11: Q <= ~Q;     // Toggle
                default: Q <= Q;    // Default case
            endcase
        end
    end
endmodule