`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 19:35:43
// Design Name: 
// Module Name: comparator_1_bit
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


module comparator_1_bit(input A,input B,output A_eq_B,
                        output A_lt_B,
                        output A_gt_B);
                        
assign A_eq_B = (A == B); 
assign A_lt_B = (A < B);  
assign A_gt_B = (A > B);  
endmodule
