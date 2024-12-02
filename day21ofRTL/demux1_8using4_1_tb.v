`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2024 20:31:43
// Design Name: 
// Module Name: demux1_8using4_1
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


module demux1_8_tb();

  reg in;              // Single input
  reg [2:0] sel;       // 3-bit select line
  wire [7:0] y;        // 8-bit output
  integer i;           // Loop variable

  // Instantiate the 1-to-8 demultiplexer module
  demux1_8using1_4 DUT (
      .in(in),
      .sel(sel),
      .y(y)
  );

  initial begin
    in = 1;            
    sel = 3'b000;       
  end 

  initial begin
    // Iterate through all select values for `in = 1`
    for (i = 0; i < 8; i = i + 1) begin
      sel = i;          
      #10;             
    end

    in = 0;
    for (i = 0; i < 8; i = i + 1) begin
      sel = i;         
      #10;              
    end
  end

  initial
    $monitor("Time=%0t | Select sel=%b, Input in=%b, Outputs y=%b", $time, sel, in, y);

  initial
    #200 $finish;

endmodule




