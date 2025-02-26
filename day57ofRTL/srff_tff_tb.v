`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 20:14:00
// Design Name: 
// Module Name: srff_tff_tb
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


module sr_to_t_flipflop_tb();
  reg clk, reset, T;
  wire Q;

  // Instantiate the T Flip-Flop
  sr_to_t_flipflop dut (
    .clk(clk),
    .reset(reset),
    .T(T),
    .Q(Q)
  );

  // Clock generation
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk; // 10ns clock period
  end

  // Task to initialize inputs
  task initialize;
    begin
      T = 1'b0;
      reset = 1'b0;
    end
  endtask

  // Task to apply T input
  task apply_t(input t_val);
    begin
      @(negedge clk) T = t_val;
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

    // Test Case 1: T=0 (No toggle)
    apply_t(1'b0);
    #10;

    // Test Case 2: T=1 (Toggle)
    apply_t(1'b1);
    #10;

    // Test Case 3: T=1 (Toggle again)
    apply_t(1'b1);
    #10;

    // Test Case 4: T=0 (No toggle)
    apply_t(1'b0);
    #10;

    // Test Case 5: T=1 (Toggle)
    apply_t(1'b1);
    #10;

    // End simulation
    #10 $finish;
  end

  // Monitor outputs
  initial
    $monitor("Time=%0t | T=%b, reset=%b, clk=%b | Q=%b",
             $time, T, reset, clk, Q);

endmodule
