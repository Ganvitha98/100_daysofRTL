`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2024 18:35:09
// Design Name: 
// Module Name: mux4_1_tb
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


module mux4_1_tb();
  reg [1:0] s;
  reg [3:0] in;
  wire out;
  integer i;

  mux4_1 DUT (.s(s), .in(in), .out(out));

  initial begin
    in = 4'b1010;
  end

  initial begin
    for (i = 0; i < 4; i = i + 1) begin
      s = i;
      #10;
    end
  end

  initial begin
    $monitor("Time = %0t | Input s = %b, in = %b, output out = %b", $time, s, in, out);
  end

  initial begin
    #400 $finish; // Adjusted delay to match the for-loop timing
  end
endmodule
