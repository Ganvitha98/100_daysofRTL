`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 17:48:22
// Design Name: 
// Module Name: counter_sequence
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


module sequence_counter (
    input clk,       // Clock signal
    input reset,     // Reset signal (Active High)
    output reg [3:0] count // 4-bit Output
);

    // State register
    reg [3:0] current_state, next_state;

    // State transition on clock edge or reset
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= 4'b0001; // Start from 1 when reset
        else
            current_state <= next_state;
    end

    // Define the sequence transitions
    //combinational logic
    always @(*) begin
        case (current_state)
            4'b0001: next_state = 4'b0011; // 1 -> 3
            4'b0011: next_state = 4'b0100; // 3 -> 4
            4'b0100: next_state = 4'b0110; // 4 -> 6
            4'b0110: next_state = 4'b1000; // 6 -> 8
            4'b1000: next_state = 4'b1010; // 8 -> 10
            4'b1010: next_state = 4'b1100; // 10 -> 12
            4'b1100: next_state = 4'b1110; // 12 -> 14
            4'b1110: next_state = 4'b0001; // 14 -> 1
            default: next_state = 4'b0001; // Default to 1
        endcase
    end

    // Assign output as the current state value
    always @(posedge clk) begin
        count <= current_state;
    end

endmodule
