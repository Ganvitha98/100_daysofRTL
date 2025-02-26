`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 17:51:16
// Design Name: 
// Module Name: sequence_counter_tb
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


module tb_sequence_counter;
    reg clk, reset;
    wire [3:0] count;

    // Instantiate the sequence counter
    sequence_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk; // Toggle every 5 time units

    initial begin
        // Monitor output
        $monitor("Time=%0t | count=%0d", $time, count);
        
        // Initialize
        clk = 0;
        reset = 1;
        #10 reset = 0; // Release reset
        #200 $finish;  // Run simulation for 100 time units
    end
endmodule

