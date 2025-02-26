`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 15:46:22
// Design Name: 
// Module Name: 4_1muxusing_decoderandtristatebuffer
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


// RTL for 4-to-1 Multiplexer using Decoder and Tri-State Buffers
module mux_4_1 (
  input [3:0] d,          // 4 data inputs
  input [1:0] sel,        // 2-bit select input
  output reg y            // Output
);
  wire [3:0] enable;      // Enable signals from decoder

  // Decoder: Generates enable signals based on select lines
  assign enable[0] = ~sel[1] & ~sel[0];
  assign enable[1] = ~sel[1] & sel[0];
  assign enable[2] = sel[1] & ~sel[0];
  assign enable[3] = sel[1] & sel[0];

  // Tri-state Buffers
  always @(*) begin
    y = 1'bz; // Default to high-impedance
    if (enable[0]) y = d[0];
    if (enable[1]) y = d[1];
    if (enable[2]) y = d[2];
    if (enable[3]) y = d[3];
  end

endmodule

// Testbench for 4-to-1 Multiplexer
/*module tb_mux_4_1();

  reg [3:0] d;           // Data inputs
  reg [1:0] sel;         // Select input
  wire y;                // Output of the multiplexer

  // Instantiate the multiplexer
  mux_4_1 uut (
    .d(d),
    .sel(sel),
    .y(y)
  );

  initial begin
    // Test Case 1: Select input 00, expect d[0] on output
    d = 4'b1010; sel = 2'b00;
    #10;
    $display("Time=%0t | d=%b | sel=%b | y=%b", $time, d, sel, y);

    // Test Case 2: Select input 01, expect d[1] on output
    sel = 2'b01;
    #10;
    $display("Time=%0t | d=%b | sel=%b | y=%b", $time, d, sel, y);

    // Test Case 3: Select input 10, expect d[2] on output
    sel = 2'b10;
    #10;
    $display("Time=%0t | d=%b | sel=%b | y=%b", $time, d, sel, y);

    // Test Case 4: Select input 11, expect d[3] on output
    sel = 2'b11;
    #10;
    $display("Time=%0t | d=%b | sel=%b | y=%b", $time, d, sel, y);

    $stop;
  end

endmodule*/
