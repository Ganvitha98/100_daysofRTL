`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 19:14:29
// Design Name: 
// Module Name: sr_latch_nand_tb
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

module srlatch_tb(); 
  reg s, r; 
  wire q, qbar; 
  srlatch dut(s, r, q, qbar); 

  // Initialize inputs
  task initialize; 
  begin 
    s = 0; 
    r = 0; 
  end 
  endtask 

  // Task to apply inputs
  task inputs(input j, input k); 
  begin 
    s = j; 
    r = k; 
  end 
  endtask 

  // Initial block to apply test vectors
  initial begin 
    initialize;  // Initialize the signals
    #10;         // Wait for a small time to observe
    inputs(1'b1, 1'b1); 
    #10; 
    inputs(1'b0, 1'b1); 
    #10; 
    inputs(1'b1, 1'b0); 
    #10; 
    inputs(1'b0, 1'b0); 
  end 

  // Monitor the outputs
  initial 
    $monitor($time, " inputs S=%b R=%b outputs Q=%b QBAR=%b", s, r, q, qbar); 

  // Finish the simulation after some time
  initial 
    #100 $finish; 
  
endmodule

