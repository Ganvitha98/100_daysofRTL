`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2024 19:58:19
// Design Name: 
// Module Name: comparator_3_bit
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


module comparator_3bit (
    input  [2:0] A,      // 3-bit input A
    input  [2:0] B,      // 3-bit input B
    output A_eq_B,       // Output: A == B
    output A_lt_B,       // Output: A < B
    output A_gt_B        // Output: A > B
);

    // Continuous assignments for comparison
    assign A_eq_B = (A == B);  // High when A is equal to B
    assign A_lt_B = (A < B);   // High when A is less than B
    assign A_gt_B = (A > B);   // High when A is greater than B

endmodule

