`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 18:58:26
// Design Name: 
// Module Name: fullsubtractorusinghalfsubtractor_tb
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


module fullsubtractorusinghalfsubtractor_tb();
reg a,b,bin;
wire diff,borrow;
fullsubtractorusinghalfsubtractor DUT(a,b,bin,diff,borrow);
initial
begin
$monitor("Input a=%b,b=%b,bin=%b,Output diff=%b,borrow=%b",a,b,bin,diff,borrow);
a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;
$finish;
end
endmodule
