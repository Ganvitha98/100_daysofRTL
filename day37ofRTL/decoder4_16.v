`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 20:05:08
// Design Name: 
// Module Name: decoder4_16
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


module decoder_4to16 (
    input [3:0] a,        
    output reg [15:0] y  
);
    always @(*) begin
        y = 16'b0;        
        case (a)
            4'b0000: y[0]  = 1;
            4'b0001: y[1]  = 1;
            4'b0010: y[2]  = 1;
            4'b0011: y[3]  = 1;
            4'b0100: y[4]  = 1;
            4'b0101: y[5]  = 1;
            4'b0110: y[6]  = 1;
            4'b0111: y[7]  = 1;
            4'b1000: y[8]  = 1;
            4'b1001: y[9]  = 1;
            4'b1010: y[10] = 1;
            4'b1011: y[11] = 1;
            4'b1100: y[12] = 1;
            4'b1101: y[13] = 1;
            4'b1110: y[14] = 1;
            4'b1111: y[15] = 1;
            default: y = 16'b0; 
        endcase
    end
endmodule
