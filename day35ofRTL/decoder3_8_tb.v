`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2024 20:16:28
// Design Name: 
// Module Name: decoder3_8_tb
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

module decoder3_8_tb;
    // Testbench signals
    reg [2:0] in;         // Input to the decoder
    wire [7:0] y;         // Output from the decoder

    // Instantiate the DUT (Device Under Test)
    decoder3_8 dut (
        .in(in),
        .y(y)
    );

    // Test stimulus
    initial begin
        $monitor("Time: %0t | in: %b | y: %b", $time, in, y);

        // Apply all input combinations
        in = 3'b000; #10; // Wait 10 time units
        in = 3'b001; #10;
        in = 3'b010; #10;
        in = 3'b011; #10;
        in = 3'b100; #10;
        in = 3'b101; #10;
        in = 3'b110; #10;
        in = 3'b111; #10;

        // Test invalid input handling (optional)
     

        // End simulation
        $finish;
    end
endmodule
