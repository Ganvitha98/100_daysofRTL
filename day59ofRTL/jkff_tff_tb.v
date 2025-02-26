`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 21:20:23
// Design Name: 
// Module Name: jkff_tff_tb
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

module jk_to_t_flipflop_tb;
    reg T;       // Toggle input
    reg clk;     // Clock signal
    reg reset;   // Reset signal
    wire Q;      // Output Q

    // Instantiate the jk_to_t_flipflop module
    jk_to_t_flipflop uut (
        .T(T),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    always begin
        clk = 0; #5;   // Generate clock with a period of 10 time units
        clk = 1; #5;
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        T = 0;
        reset = 0;
        #10;  // Wait for some time

        // Apply reset
        reset = 1;
        #10;
        reset = 0;
        #10;

        // Apply T = 0 (No change expected)
        T = 0;
        #10;

        // Apply T = 1 (Toggle expected)
        T = 1;
        #10;

        // Apply T = 0 (Reset expected)
        T = 0;
        #10;

        // Apply T = 1 (Toggle expected)
        T = 1;
        #10;

        // End of simulation
        $stop;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t, T = %b, Q = %b", $time, T, Q);
    end
endmodule
