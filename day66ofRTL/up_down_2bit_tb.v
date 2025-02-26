`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2025 20:58:47
// Design Name: 
// Module Name: up_down_2bit_tb
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


module up_down_2bit_tb;
    reg clk, rst, mode;
    wire [1:0] q;

    // Instantiate the design
    up_down_2bit uut (
        .clk(clk),
        .rst(rst),
        .mode(mode),
        .q(q)
    );

    // Clock Generation
    always #5 clk = ~clk;  // 10-time unit clock period

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        mode = 1;  // Start in Up mode
        #10 rst = 0;  // Release reset

        // Count Up
        #50 mode = 0;  // Switch to Down mode
        #50 $stop;  // Stop simulation
    end
endmodule
