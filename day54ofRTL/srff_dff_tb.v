`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 19:32:48
// Design Name: 
// Module Name: srff_dff_tb
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

module sr_to_d_flipflop_tb();
  reg clk, reset, D;
  wire Q;

  // Instantiate the module
  sr_to_d_flipflop dut (
    .clk(clk),
    .reset(reset),
    .D(D),
    .Q(Q)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock period
  end

  // Task to initialize inputs
  task initialize;
    begin
      D = 1'b0;
      reset = 1'b0;
    end
  endtask

  // Task to apply D input
  task apply_d(input d_val);
    begin
      @(negedge clk) D = d_val;
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
    initialize;

    // Apply reset
    apply_reset;
    #10;

    // Test Case 1: D=0
    apply_d(1'b0);
    #10;

    // Test Case 2: D=1
    apply_d(1'b1);
    #10;

    // Test Case 3: Toggle D back to 0
    apply_d(1'b0);
    #10;

    // Test Case 4: Toggle D to 1
    apply_d(1'b1);
    #10;

    // End simulation
    #10 $finish;
  end

  // Monitor outputs
  initial
    $monitor("Time=%0t | D=%b, reset=%b, clk=%b | Q=%b",
             $time, D, reset, clk, Q);

endmodule

