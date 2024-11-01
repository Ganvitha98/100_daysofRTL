`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2024 22:52:19
// Design Name: 
// Module Name: nor_gate
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
/*module nor_gate(a,b,y);
  input a,b; 
  output y; 
  nor(y,a,b); 
endmodule

////Data flow modelling
module nor_gate(a,b,y);
  input a,b; 
  output y; 
  assign y=~(a|b);
  endmodule*/
  
///Behavioral modelling
module nor_gate(a,b,y);
  input a,b; 
  output reg y; 
  always@(a,b)
  begin
  if(a==1'b0 & b==1'b0)
    begin
    y=1'b1;
    end   
    else
    y=1'b0;
    end
 endmodule


