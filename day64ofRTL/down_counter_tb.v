`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 20:24:42
// Design Name: 
// Module Name: down_counter_tb
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


module tb_async_down_counter;

    reg clk;
    reg reset;
    wire [2:0] count;

    // Instantiate the 3-bit asynchronous down counter
    async_down_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;  // 10 time unit period

    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;

        // Monitor signals
        $monitor("Time: %0d, Count: %b, Reset: %b", $time, count, reset);

        // Apply reset
        #10 reset = 1;
        #10 reset = 0;

        // Wait for a few clock cycles
        #100;

        // End simulation
        $finish;
    end

endmodule
