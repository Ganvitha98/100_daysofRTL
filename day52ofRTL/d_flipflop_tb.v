`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 19:05:23
// Design Name: 
// Module Name: d_flipflop_tb
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

module d_flipflop_tb();
  reg d, clk, reset;
  wire q;

  // Instantiate D Flip-Flop
  d_flipflop dut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
  );

  // Clock generation
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk; // 10ns clock period
  end

  // Task to initialize inputs
  task initialize;
    begin
      d = 1'b0;
      reset = 1'b0;
    end
  endtask

  // Task to apply data input D
  task apply_d(input d_val);
    begin
      @(negedge clk) d = d_val;
    end
  endtask

  // Task to apply reset
  task apply_reset;
    begin
      @(negedge clk) reset = 1'b1;
      @(negedge clk) reset = 1'b0;
    end
  endtask

  // Test sequence
  initial begin
    initialize; // Initialize inputs

    // Apply reset
    apply_reset;
    #10;

    // Test Case 1: Set D=0
    apply_d(1'b0);
    #10;

    // Test Case 2: Set D=1
    apply_d(1'b1);
    #10;

    // Test Case 3: Set D=0
    apply_d(1'b0);
    #10;

    // Test Case 4: Toggle D to 1
    apply_d(1'b1);
    #10;

    // End test
    #10 $finish;
  end

  // Monitor outputs
  initial
    $monitor("Time=%0t | D=%b, reset=%b, clk=%b | Q=%b",
             $time, d, reset, clk, q);

endmodule

