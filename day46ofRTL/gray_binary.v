`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 16:33:29
// Design Name: 
// Module Name: gray_binary
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


// Gray to Binary Code Converter
module gray_to_binary (
  input [3:0] gray,   // 4-bit Gray Code input
  output [3:0] binary // 4-bit Binary output
);

  // Assigning Binary bits based on Gray Code input
  assign binary[3] = gray[3];                       // MSB remains the same
  assign binary[2] = binary[3] ^ gray[2];           // XOR of MSB and the next Gray bit
  assign binary[1] = binary[2] ^ gray[1];           // XOR of the next two bits
  assign binary[0] = binary[1] ^ gray[0];           // XOR of the last two bits

endmodule
