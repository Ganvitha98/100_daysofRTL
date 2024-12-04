`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2024 19:18:22
// Design Name: 
// Module Name: demux1_16using1_4demux
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


module demux1_16using1_4demux(input in,input [3:0]sel,output[15:0]y);
wire [3:0]w;
demux1_4 D1(in,sel[3:2],w[3:0]);
demux1_4 D2(w[0],sel[1:0],y[3:0]);
demux1_4 D3(w[1],sel[1:0],y[7:4]);
demux1_4 D4(w[2],sel[1:0],y[11:8]);
demux1_4 D5(w[3],sel[1:0],y[15:12]);
endmodule

