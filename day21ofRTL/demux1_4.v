`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2024 19:12:45
// Design Name: 
// Module Name: demux1_4
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
/*module demux1_4(input in, input [1:0] sel, output reg [3:0] y);
    always @(*) begin
        y= 4'b0000;
        case (sel)
            2'd0: y[0] = in;
            2'd1: y[1] = in;
            2'd2: y[2] = in;
            2'd3: y[3] = in;
        endcase
    end
endmodule*/

module demux1_4(input in, input [1:0]sel, output  [3:0] y);
assign y[0]=in & ~sel[1] & ~sel[0];
assign y[1]=in & sel[1] & ~sel[0];
assign y[2]=in & sel[1] & ~sel[0];
assign y[3]=in & sel[1] & sel[0];
endmodule
