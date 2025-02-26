`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2024 20:00:21
// Design Name: 
// Module Name: comparator_3_bit_tb
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


module tb_comparator_3bit;
    reg [2:0] A, B;         // Test inputs
    wire A_eq_B, A_lt_B, A_gt_B; // Test outputs

    // Instantiate the 3-bit comparator
    comparator_3bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B),
        .A_gt_B(A_gt_B)
    );

    initial begin
        // Monitor changes in inputs and outputs
        $monitor($time, " A=%b, B=%b | A_eq_B=%b, A_lt_B=%b, A_gt_B=%b", A, B, A_eq_B, A_lt_B, A_gt_B);

        // Apply test cases
        A = 3'b000; B = 3'b000; #10; // Test case 1 (A == B)
        A = 3'b001; B = 3'b000; #10; // Test case 2 (A > B)
        A = 3'b010; B = 3'b011; #10; // Test case 3 (A < B)
        A = 3'b100; B = 3'b010; #10; // Test case 4 (A > B)
        A = 3'b111; B = 3'b111; #10; // Test case 5 (A == B)

        $finish; // End simulation
    end
endmodule
