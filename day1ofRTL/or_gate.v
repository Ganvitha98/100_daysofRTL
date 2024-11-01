`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 16:19:35
// Design Name: 
// Module Name: or_gate
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
//Gate level modelling
/*module or_gate(a,b,y);
  input a,b; 
  output y; 
  or(y,a,b); 
endmodule

////Data flow modelling
module or_gate(a,b,y);
  input a,b; 
  output y; 
  assign y=a|b;
  endmodule*/
  
///Behavioral modelling
module or_gate(a,b,y);
  input a,b; 
  output reg y; 
  always@(a,b)
  begin
  if(a==1'b0 & b==1'b0)
    begin
    y=1'b0;
    end   
    else
    y=1'b1;
    end
 endmodule

