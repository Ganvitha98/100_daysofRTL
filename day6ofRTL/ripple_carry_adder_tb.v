`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2024 20:31:14
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
integer i;
ripple_carry_adder DUT(a,b,cin,sum,cout);
initial
begin
a=1'b0;b=1'b0;cin=1'b0;
end
initial
begin
for(i=0;i<512;i=i+1)
begin
{a,b}=i;
#10;
end
end
initial
begin
$monitor("Input a=%b,b=%b,cin=%b,Output sum=%b,cout=%b",a,b,cin,sum,cout);
#500 $finish;
end
endmodule
