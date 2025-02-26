`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 16:22:19
// Design Name: 
// Module Name: gray_to_binary
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

module binary_to_gray (
  input [3:0] binary,   // 4-bit Binary input
  output [3:0] gray     // 4-bit Gray Code output
);

  // Assigning Gray code bits based on Binary input
  assign gray[3] = binary[3];               // MSB remains the same
  assign gray[2] = binary[3] ^ binary[2];   // XOR of MSB and the next bit
  assign gray[1] = binary[2] ^ binary[1];   // XOR of the next two bits
  assign gray[0] = binary[1] ^ binary[0];   // XOR of the last two bits

endmodule

