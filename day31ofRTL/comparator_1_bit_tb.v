`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 19:45:07
// Design Name: 
// Module Name: comparator_1_bit_tb
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


module tb_comparator_1bit;

    reg A, B;              // Test inputs
    wire A_eq_B, A_lt_B, A_gt_B; // Test outputs

    // Instantiate the comparator
    comparator_1_bit uut (
        .A(A),
        .B(B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B),
        .A_gt_B(A_gt_B)
    );

    initial begin
        
        $monitor($time, " A=%b, B=%b | OUTPUT: A_eq_B=%b, A_lt_B=%b, A_gt_B=%b", A, B, A_eq_B, A_lt_B, A_gt_B);

        
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish; 
    end

endmodule
