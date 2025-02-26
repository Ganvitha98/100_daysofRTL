`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 18:37:54
// Design Name: 
// Module Name: sr_latch_nor
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
//gate level modelling
module srlatch(s,r,q,qbar); 
input s,r;
inout q,qbar; 
nor n1(q,r,qbar); 
nor n2(qbar,s,q); 
endmodule 

/*module srlatch(input s, r, output reg q, output reg qbar);
  
  always @ (s or r) begin
    q = ~(s | qbar);  // NOR gate for q
    qbar = ~(r | q);  // NOR gate for qbar
  end*/
  
/*
// SR Latch using NOR Gates (Behavioral Modeling)
module sr_latch_behavioral (
  input S,    // Set input
  input R,    // Reset input
  output reg Q,   // Output Q
  output reg Qn   // Complement of Q
);

  always @(*) begin
    if (S & R) begin
      Q = 1'bx;  // Invalid state
      Qn = 1'bx;
    end else if (S) begin
      Q = 1;
      Qn = 0;
    end else if (R) begin
      Q = 0;
      Qn = 1;
    end else begin
      // Hold condition: Maintain previous state
      Q = Q;
      Qn = Qn;
    end
  end

endmodule*/
