`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 15:43:39
// Design Name: 
// Module Name: xor_gate_tb
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

`timescale 1ns/1ps

module xor_gate_tb;
    // Declare inputs and outputs
    reg a, b;       // Inputs to the OR gate
    wire y;         // Output of the OR gate

    // Instantiate the or_gate module
    xor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Monitor changes
    initial begin
        $monitor("Time: %0t | a = %b | b = %b | y = %b", $time, a, b, y);
    end

    // Test sequence
    initial begin
        // Apply all combinations of inputs
        a = 0; b = 0; #10;  // Test case 1: a = 0, b = 0
        a = 0; b = 1; #10;  // Test case 2: a = 0, b = 1
        a = 1; b = 0; #10;  // Test case 3: a = 1, b = 0
        a = 1; b = 1; #10;  // Test case 4: a = 1, b = 1

        $finish;  // End the simulation
    end
endmodule

