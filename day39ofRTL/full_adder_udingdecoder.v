`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2024 17:29:13
// Design Name: 
// Module Name: full_adder_udingdecoder
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


module full_adder_usingdecoder(input [2:0]in,output sum,carry);
wire [7:0]m;
decoder3_8 A1 (
        .in(in),
        .out(m) 
    );
assign sum=m[1]|m[2]|m[4]|m[7];
assign carry=m[3]|m[5]|m[6]|m[7];
endmodule
