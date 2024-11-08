`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 21:11:38
// Design Name: 
// Module Name: adder_16bit_tb
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


module adder_16bit_tb();
reg [15:0]a,b;
reg cin;
wire [15:0]sum;
wire cout;
adder_16bit DUT(a,b,cin,sum,cout);
initial
begin
a=16'h0000;
b=16'h0000;
cin=0;
end
always #1 b=b+1'b1;
always #2 a=a+1'b1;
initial
$monitor("input a=%h,b=%h,cin=%h,output sum=%h,cout=%h",a,b,cin,sum,cout);
initial
#500 $finish;
endmodule
