`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2024 20:12:50
// Design Name: 
// Module Name: demux1_16
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

module demux1_16 (
    input in,             
    input [3:0] sel,      
    output reg [15:0] y);

    always @(*) begin
        y = 16'b0000;             
        case (sel)
            4'd0: y[0] = in;
            4'd1: y[1] = in;
            4'd2: y[2] = in;
            4'd3: y[3] = in;
            4'd4: y[4] = in;
            4'd5: y[5] = in;
            4'd6: y[6] = in;
            4'd7: y[7] = in;
            4'd8: y[8] = in;
            4'd9: y[9] = in;
            4'd10: y[10] = in;
            4'd11: y[11] = in;
            4'd12: y[12] = in;
            4'd13: y[13] = in;
            4'd14: y[14] = in;
            4'd15: y[15] = in;
            default: y = 16'b0;
        endcase
    end

endmodule

