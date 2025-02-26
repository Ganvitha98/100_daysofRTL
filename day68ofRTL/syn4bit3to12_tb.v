`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 21:19:15
// Design Name: 
// Module Name: syn4bit3to12_tb
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


module tb_sync_counter;
    reg clk, reset;
    wire [3:0] count;

    // Instantiate the counter
    sync_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation (10-time unit period)
    always #5 clk = ~clk;  

    initial begin
        $monitor("Time=%0t | count=%d", $time, count);
        
        clk = 0;  
        reset = 1; #10; // Apply reset
        reset = 0; #200; // Run counter
        $finish;
    end
endmodule
