`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 18:25:12
// Design Name: 
// Module Name: sop_implementation_tb
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
///////////////////////////////////////////////////////////////////////////////


/*module sop_implementation_tb();
  reg a, b, c, d; // Declare separate signals for a, b, c, d
  reg [1:0] s;    // 2-bit select line
  reg [3:0] in;   // 4-bit input
  wire out;
  integer i;

  // Instantiate the Device Under Test (DUT)
  sop_expression DUT (.a(a), .b(b), .c(c), .d(d), .out(out));

  initial begin
    // Set initial value for 'in'
    in = 4'b1010;
  end

  initial begin
    // Loop to change the select lines 's'
    for (i = 0; i < 4; i = i + 1) begin
      s = i;
      a = s[1];  // Assign s[1] to a
      b = s[0];  // Assign s[0] to b
      // Assign values for c and d, which can be set arbitrarily here
      c = in[2]; // You can choose how to set c and d
      d = in[3]; // Similarly for d
      #10;
    end
  end

  initial begin
    // Monitor changes in the signals and display them
    $monitor("Time = %0t | s = %b | in = %b | a = %b, b = %b, c = %b, d = %b | output out = %b", 
              $time, s, in, a, b, c, d, out);
  end

  initial begin
    // End simulation after some time
    #400 $finish; 
  end
endmodule*/
// Module for 4-to-1 Multiplexer
module example_implementation;
    reg a, b, c, d;           // Inputs
    wire out;                 // Output

    // Instantiate the function implementation
    sop_expression u1 (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out(out)
    );

    // Testbench logic
    initial begin
        //$dumpfile("function_implementation.vcd"); // VCD file for waveform
        //$dumpvars(1);                             // Dump variables for waveform
        $monitor("Time=%0t | a=%b, b=%b, c=%b, d=%b | out=%b", $time, a, b, c, d, out);

        // Apply all input combinations
        {a, b, c, d} = 4'b0000; #10;
        {a, b, c, d} = 4'b0001; #10;
        {a, b, c, d} = 4'b0010; #10;
        {a, b, c, d} = 4'b0011; #10;
        {a, b, c, d} = 4'b0100; #10;
        {a, b, c, d} = 4'b0101; #10;
        {a, b, c, d} = 4'b0110; #10;
        {a, b, c, d} = 4'b0111; #10;
        {a, b, c, d} = 4'b1000; #10;
        {a, b, c, d} = 4'b1001; #10;
        {a, b, c, d} = 4'b1010; #10;
        {a, b, c, d} = 4'b1011; #10;
        {a, b, c, d} = 4'b1100; #10;
        {a, b, c, d} = 4'b1101; #10;
        {a, b, c, d} = 4'b1110; #10;
        {a, b, c, d} = 4'b1111; #10;

        $stop; // End simulation
    end
endmodule