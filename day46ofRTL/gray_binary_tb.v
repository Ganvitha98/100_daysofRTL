`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 16:37:02
// Design Name: 
// Module Name: gray_binary_tb
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


module tb_gray_to_binary();

  reg [3:0] gray;       // 4-bit Gray Code input
  wire [3:0] binary;    // 4-bit Binary output

  // Instantiate the Gray to Binary Code Converter
  gray_to_binary uut (
    .gray(gray),
    .binary(binary)
  );

  initial begin
    $display("Time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    // Test Case 1
    gray = 4'b0000; #10;
    $display("Time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    // Test Case 2
    gray = 4'b0001; #10;
    $display("Time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    // Test Case 3
    gray = 4'b0011; #10;
    $display("Time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    // Test Case 4
    gray = 4'b0010; #10;
    $display("Time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    // Test Case 5
    gray = 4'b0110; #10;
    $display("Time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    // Test Case 6
    gray = 4'b1111; #10;
    $display("Time=%0t | Gray=%b | Binary=%b", $time, gray, binary);

    $stop;
  end

endmodule
