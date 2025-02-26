`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 19:02:04
// Design Name: 
// Module Name: sr_latch_nand
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


/*module srlatch(s,r,q,qbar); 
input s,r;
inout q,qbar; 
nand n1(q,s,qbar); 
nand n2(qbar,r,q); 
endmodule */

module srlatch(input s, r, output reg q, output reg qbar);
  
  always @ (s or r) begin
    q = ~(s & qbar);   // NAND gate for q
    qbar = ~(r & q);   // NAND gate for qbar
  end
  
endmodule
