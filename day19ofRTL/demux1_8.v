`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2024 19:33:28
// Design Name: 
// Module Name: demux1_8
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


module demux1_8 (
    output reg [7:0] y, 
    input [2:0] sel,   
    input in           
);

  always @(*) begin
  // Initialize all outputs to 0 to avoid latches
    y = 8'b00000000;
    case (sel)
      3'd0: y[0] = in;
      3'd1: y[1] = in;
      3'd2: y[2] = in;
      3'd3: y[3] = in;
      3'd4: y[4] = in;
      3'd5: y[5] = in;
      3'd6: y[6] = in;
      3'd7: y[7] = in;
      default: y = 8'b00000000; 
    endcase
  end

endmodule

