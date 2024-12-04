`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2024 19:30:04
// Design Name: 
// Module Name: demux1_4
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


module demux1_4(input in,input [1:0]sel,output reg[3:0]y);

  always @(*) begin
    // Initialize all outputs to 0
    y = 4'b0000;

    // Select the output based on 'sel'
    case (sel)
      2'b00: y[0] = in; // Input routed to y[0]
      2'b01: y[1] = in; // Input routed to y[1]
      2'b10: y[2] = in; // Input routed to y[2]
      2'b11: y[3] = in; // Input routed to y[3]
      default: y = 4'b0000; // Default case (redundant but good practice)
    endcase
  end

endmodule

