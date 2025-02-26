`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 18:40:28
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop (
    input clk,    
    input reset,   // Asynchronous reset signal
    input  J,       // J input
    input  K,       // K input
    output reg Q );       // Output Q);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 0; 
        end else 
               begin
            case ({J, K})
                2'b00: Q <= Q;       // No change
                2'b01: Q <= 0;       // Reset
                2'b10: Q <= 1;       // Set
                2'b11: Q <= ~Q;      // Toggle
            endcase
        end
    end
endmodule
