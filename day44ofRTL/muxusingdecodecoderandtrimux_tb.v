`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 15:55:17
// Design Name: 
// Module Name: muxusingdecodecoderandtrimux_tb
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


module tb_mux_4_1();

  reg [3:0] d;           // Data inputs
  reg [1:0] sel;         // Select input
  wire y;                // Output of the multiplexer
  wire [3:0] enable;     // Decoder enable signals

  // Instantiate the multiplexer
  mux_4_1 uut (
    .d(d),
    .sel(sel),
    .y(y)
  );

  assign enable[0] = ~sel[1] & ~sel[0];
  assign enable[1] = ~sel[1] & sel[0];
  assign enable[2] = sel[1] & ~sel[0];
  assign enable[3] = sel[1] & sel[0];

  initial begin
    $monitor("Time=%0t | d=%b | sel=%b | enable=%b | y=%b", $time, d, sel, enable, y);

    // Test Case 1
    d = 4'b1010; sel = 2'b00; #10;

    // Test Case 2
    sel = 2'b01; #10;

    // Test Case 3
    sel = 2'b10; #10;

    // Test Case 4
    sel = 2'b11; #10;

    $stop;
  end
endmodule

