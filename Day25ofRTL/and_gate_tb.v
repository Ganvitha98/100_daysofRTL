`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 14:47:18
// Design Name: 
// Module Name: and_gate_tb
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

module and_gate_tb;
    // Declare inputs and outputs
    reg a, b;       // Inputs to the AND gate
    wire y;         // Output from the AND gate

    // Instantiate the and_gate module
    and_gate uut (
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
