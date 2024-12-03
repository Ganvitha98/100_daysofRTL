`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2024 17:41:59
// Design Name: 
// Module Name: demux1_8using1_2demux
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


module demux1_8using1_2demux(input in,input [2:0]sel,output [7:0]y);
wire w0,w1,w2,w3,w4,w5;
demux1_2 D1(in,sel[2],w0,w1);
demux1_2 D2(w0,sel[1],w2,w3);
demux1_2 D3(w1,sel[1],w4,w5);
demux1_2 D4(w2,sel[0],y[0],y[1]);
demux1_2 D5(w3,sel[0],y[2],y[3]);
demux1_2 D6(w4,sel[0],y[4],y[5]);
demux1_2 D7(w5,sel[0],y[6],y[7]);
endmodule
