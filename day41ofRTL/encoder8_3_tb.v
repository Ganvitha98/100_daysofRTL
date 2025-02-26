`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2024 19:39:11
// Design Name: 
// Module Name: encoder8_3_tb
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


module encoder8_3_tb;
    reg [7:0] d;           // 8-bit input to the encoder
    wire [2:0] y;          // 3-bit output from the encoder

    // Instantiate the encoder8_3 module
    encoder8_3 uut (
        .d(d),
        .y(y)
    );

    initial begin
        // Monitor the changes in d and y
        $monitor("Time=%0t | d=%b | y=%b", $time, d, y);

        // Test all possible inputs
        d = 8'b00000001; #10;  // Test for input at position 0
        d = 8'b00000010; #10;  // Test for input at position 1
        d = 8'b00000100; #10;  // Test for input at position 2
        d = 8'b00001000; #10;  // Test for input at position 3
        d = 8'b00010000; #10;  // Test for input at position 4
        d = 8'b00100000; #10;  // Test for input at position 5
        d = 8'b01000000; #10;  // Test for input at position 6
        d = 8'b10000000; #10;  // Test for input at position 7
        d = 8'b00000000; #10;  // Test for no input (invalid case)

        // Additional test case for overlapping or invalid inputs
        d = 8'b11000000; #10;  // Multiple active bits, invalid case

        // End the simulation
        $stop;
    end
endmodule
