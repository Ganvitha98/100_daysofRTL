`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 20:13:45
// Design Name: 
// Module Name: half_adder
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

//data flow modelling
/*module half_adder(input a,b,output sum,carry);
assign sum=a^b; 
assign carry=a&b;
endmodule


//gate level modelling
module half_adder(input a,b,output sum,carry);
xor(sum,a,b); 
and(carry,a,b); 
endmodule*/

//behavioral modelling
module half_adder(input a,b,output reg sum,carry);
always@(a,b) 
begin
if(a==0 && b==0)begin
sum=0;
carry=0;
end       
else if(a==1 && b==1)
begin
sum=0;
carry=1;
end 
else
begin 
sum=1;
carry=0;
end 
end
endmodule





