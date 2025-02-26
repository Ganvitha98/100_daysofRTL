`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 21:53:07
// Design Name: 
// Module Name: tff_dff
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


module d_to_t_flipflop (
    input D,     // Data input
    input clk,   // Clock signal
    input reset, // Reset signal
    output reg Q // Output
);
    wire T;

    // Map D to T (T = D)
    assign T = D ^ Q; // T is the XOR of D and Q

    // T flip-flop with asynchronous reset
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;    // Reset the output to 0
        else begin
            if (T)
                Q <= ~Q;  // Toggle output when T is high
        end
    end
endmodule
