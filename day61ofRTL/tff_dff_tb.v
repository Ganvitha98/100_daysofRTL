`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 21:59:19
// Design Name: 
// Module Name: tff_dff_tb
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


module d_to_t_flipflop_tb;
    reg D;      // Data input
    reg clk;    // Clock signal
    reg reset;  // Reset signal
    wire Q;     // Output

    // Instantiate the d_to_t_flipflop module
    d_to_t_flipflop uut (
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    initial begin
        clk = 0; 
        forever #5 clk = ~clk; // Generate a clock with a period of 10 time units
    end

    // Task for applying stimulus and checking outputs
    task apply_stimulus(input reg D_in, input reg rst);
        begin
            D = D_in;
            reset = rst;
            #10;  // Wait for 2 clock edges
        end
    endtask

    // Test cases
    initial begin
        // Initialize inputs
        D = 0; reset = 0;

        // Apply reset
        apply_stimulus(0, 1);
        $display("Reset: Q = %b", Q);

        // Apply D = 0
        apply_stimulus(0, 0);
        $display("D=0: Q = %b", Q);

        // Apply D = 1
        apply_stimulus(1, 0);
        $display("D=1: Q = %b", Q);

        // Apply D = 0
        apply_stimulus(0, 0);
        $display("D=0: Q = %b", Q);

        // Apply D = 1 (Toggle expected)
        apply_stimulus(1, 0);
        $display("D=1 (Toggle): Q = %b", Q);

        // End simulation
        $stop;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t, D = %b, Q = %b", $time, D, Q);
    end
endmodule
