`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2024 18:58:07
// Design Name: 
// Module Name: demux1_8using1_4
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


module demux1_8using1_4(input in, input [2:0] sel, output [7:0] y);
    wire [3:0] temp;

    demux1_4 first_demux(
        .in(in),
        .sel(sel[2:1]),
        .y(temp)
    );

    demux1_4 lower_demux(
        .in(temp[0]),
        .sel(sel[0]),
        .y(y[3:0])
    );

    demux1_4 upper_demux(
        .in(temp[1]),
        .sel(sel[0]),
        .y(y[7:4])
    );
endmodule