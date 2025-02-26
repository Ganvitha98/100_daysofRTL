`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 22:26:35
// Design Name: 
// Module Name: tff_jkff_tb
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


module t_to_jk_flipflop_tb;
    reg j, k;      // Inputs for JK Flip-Flop
    reg clk;       // Clock signal
    reg reset;     // Reset signal
    wire Q;        // Output

    // Instantiate the t_to_jk_flipflop module
    t_to_jk_flipflop uut (
        .j(j),
        .k(k),
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
    task apply_stimulus(input reg j_in, input reg k_in, input reg rst);
        begin
            j = j_in;
            k = k_in;
            reset = rst;
            #10;  // Wait for 2 clock edges
        end
    endtask

    // Test cases
    initial begin
        // Initialize inputs
        j = 0; k = 0; reset = 0;

        // Apply reset
        apply_stimulus(0, 0, 1);
        $display("Reset: Q = %b", Q);

        // Apply J = 1, K = 0 (Set)
        apply_stimulus(1, 0, 0);
        $display("J=1, K=0: Q = %b", Q);

        // Apply J = 0, K = 1 (Reset)
        apply_stimulus(0, 1, 0);
        $display("J=0, K=1: Q = %b", Q);

        // Apply J = 1, K = 1 (Toggle)
        apply_stimulus(1, 1, 0);
        $display("J=1, K=1: Q = %b", Q);

        // Apply J = 0, K = 0 (No change)
        apply_stimulus(0, 0, 0);
        $display("J=0, K=0: Q = %b", Q);

        // End simulation
        $stop;
    end

    // Monitor the output
    initial begin
        $monitor("At time %t, J = %b, K = %b, Q = %b", $time, j, k, Q);
    
end
endmodule