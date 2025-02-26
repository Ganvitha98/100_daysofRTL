`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 18:48:19
// Design Name: 
// Module Name: jk_flipflop_tb
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


module jk_flipflop_tb();
  reg J, K, clk, reset;
  wire Q;

  // Instantiate JK Flip-Flop
  jk_flipflop dut (
    .clk(clk),
    .reset(reset),
    .J(J),
    .K(K),
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
      J = 1'b0;
      K = 1'b0;
      reset = 1'b0;
    end
  endtask

  // Task to apply J and K inputs
  task apply_jk(input j_val, input k_val);
    begin
      @(negedge clk) begin
        J = j_val;
        K = k_val;
      end
    end
  endtask

  // Task to reset the flip-flop
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

    // Test Case 1: No change (J=0, K=0)
    apply_jk(1'b0, 1'b0);
    #10;

    // Test Case 2: Set condition (J=1, K=0)
    apply_jk(1'b1, 1'b0);
    #10;

    // Test Case 3: Reset condition (J=0, K=1)
    apply_jk(1'b0, 1'b1);
    #10;

    // Test Case 4: Toggle condition (J=1, K=1)
    apply_jk(1'b1, 1'b1);
    #10;

    // End test
    #10 $finish;
  end

  // Monitor outputs
  initial
    $monitor("Time=%0t | J=%b, K=%b, reset=%b, clk=%b | Q=%b",$time, J, K, reset, clk, Q);

endmodule
