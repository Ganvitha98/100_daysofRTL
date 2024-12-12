`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 20:01:23
// Design Name: 
// Module Name: comparator_2_bit_tb
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


module tb_comparator_2bit;

    reg [1:0] A, B;         // Test inputs
    wire A_eq_B, A_lt_B, A_gt_B; // Test outputs

    // Instantiate the 2-bit comparator
    comparator_2bit uut (
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
        A = 2'b00; B = 2'b00; #10; // Test case 1
        A = 2'b01; B = 2'b00; #10; // Test case 2
        A = 2'b10; B = 2'b11; #10; // Test case 3
        A = 2'b11; B = 2'b10; #10; // Test case 4
        A = 2'b11; B = 2'b11; #10; // Test case 5

        $finish; // End simulation
    end

endmodule
