`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2025 19:22:08
// Design Name: 
// Module Name: sr_flipflop
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


/*module sr_flipflop(clk,s,r,q,qb);
input clk,s,r;
output reg q;
output qb;
always@(posedge clk)
begin
if(s==0 && r==0)
 q<=q;
 else if(s==0 && r==1)
  q<=1'b0;
  else if(s==1 && r==0)
  q<=1'b1;
  else //if(s==1 && r==1)
  q<=1'bz;
  end
  assign qb =~q;
  endmodule
  */
 module sr_flipflop(clk,s,r,q,qb);
input clk,s,r;
output reg q;
output qb;
always@(posedge clk)
begin
case({s,r})
 2'b00:q<=q;
 2'b01:q<=1'b0;
 2'b10:q<=1'b1;
 2'b11:q<=1'bz;
 endcase
 end
 assign qb=~q;
 endmodule
