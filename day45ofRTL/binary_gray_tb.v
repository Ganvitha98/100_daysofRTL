`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 16:29:06
// Design Name: 
// Module Name: binary_gray_tb
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


module tb_binary_to_gray();

  reg [3:0] binary;     // 4-bit Binary input
  wire [3:0] gray;      // 4-bit Gray Code output

  // Instantiate the Binary to Gray Code Converter
  binary_to_gray uut (
    .binary(binary),
    .gray(gray)
  );

  initial begin
    $display("Time=%0t | Binary=%b | Gray=%b", $time, binary, gray);

    // Test Case 1
    binary = 4'b0000; #10;
    $display("Time=%0t | Binary=%b | Gray=%b", $time, binary, gray);

    // Test Case 2
    binary = 4'b0001; #10;
    $display("Time=%0t | Binary=%b | Gray=%b", $time, binary, gray);

    // Test Case 3
    binary = 4'b0010; #10;
    $display("Time=%0t | Binary=%b | Gray=%b", $time, binary, gray);

    // Test Case 4
    binary = 4'b0011; #10;
    $display("Time=%0t | Binary=%b | Gray=%b", $time, binary, gray);

    // Test Case 5
    binary = 4'b0100; #10;
    $display("Time=%0t | Binary=%b | Gray=%b", $time, binary, gray);

    // Test Case 6
    binary = 4'b1111; #10;
    $display("Time=%0t | Binary=%b | Gray=%b", $time, binary, gray);

    $stop;
  end

endmodule
