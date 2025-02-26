`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2025 20:01:47
// Design Name: 
// Module Name: sr_flipflop_tb
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


module sr_flipflop_tb();
  reg s, r, clk;
  wire q, qb;

  // Instantiate SR Flip-Flop
  sr_flipflop dut (
    .clk(clk),
    .s(s),
    .r(r),
    .q(q),
    .qb(qb)
  );

  // Clock generation
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk; // 10ns clock period
  end

  // Task to initialize inputs
  task initialize;
    begin
      s = 1'b0;
      r = 1'b0;
    end
  endtask

  // Task to set and reset the flip-flop
  task apply_sr(input set, input reset);
    begin
      @(negedge clk) begin
        s = set;
        r = reset;
      end
    end
  endtask

  // Test sequence
  initial begin
    initialize; // Initialize inputs

    // Test Case 1: Retain previous state (s=0, r=0)
    apply_sr(1'b0, 1'b0);
    #10;

    // Test Case 2: Set condition (s=1, r=0)
    apply_sr(1'b1, 1'b0);
    #10;

    // Test Case 3: Reset condition (s=0, r=1)
    apply_sr(1'b0, 1'b1);
    #10;

    // Test Case 4: Invalid condition (s=1, r=1)
    apply_sr(1'b1, 1'b1);
    #10;

    // End test
    #10 $finish;
  end

  // Monitor outputs
  initial
    $monitor("Time=%0t | s=%b, r=%b, clk=%b | q=%b, qb=%b",
             $time, s, r, clk, q, qb);

endmodule
