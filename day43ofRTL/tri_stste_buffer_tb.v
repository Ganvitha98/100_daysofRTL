`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 15:40:20
// Design Name: 
// Module Name: tri_stste_buffer_tb
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



module tb_tri_state_buffer();

  reg a;       
  reg enable;  
  wire y;      

  
  tri_state_buffer uut (
    .a(a),
    .enable(enable),
    .y(y)
  );

  initial begin
    
    a = 1'b0; enable = 1'b0;
    #10;
    $display("Time=%0t | a=%b | enable=%b | y=%b", $time, a, enable, y);

    
    a = 1'b0; enable = 1'b1;
    #10;
    $display("Time=%0t | a=%b | enable=%b | y=%b", $time, a, enable, y);

    
    a = 1'b1; enable = 1'b1;
    #10;
    $display("Time=%0t | a=%b | enable=%b | y=%b", $time, a, enable, y);

    
    a = 1'b1; enable = 1'b0;
    #10;
    $display("Time=%0t | a=%b | enable=%b | y=%b", $time, a, enable, y);

    $stop;
  end
endmodule
