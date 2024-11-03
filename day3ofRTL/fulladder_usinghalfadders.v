`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2024 17:08:52
// Design Name: 
// Module Name: fulladder_usinghalfadders
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


// Full Adder Using Two Half Adders
module fulladder_usinghalfadders(input a, b, c, output sum, carry);
  wire w1, w2, w3;

  // Instantiate two half adders
  half_adder A1 (.a(a), .b(b), .sum(w1), .carry(w2));
  half_adder A2 (.a(w1), .b(c), .sum(sum), .carry(w3));

  // OR gate for carry out
  or O1(carry, w3, w2);
endmodule










