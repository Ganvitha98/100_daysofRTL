`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Name:G.Anvitha
// Create Date: 16.11.2024 19:54:01
// Design Name: 
// Module Name: mux16_1
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
////////////////////////////////////////////////////////////////////////////////
//behaviour modelling
/*module mux16_1(s, in, out);
    input [3:0] s;       // 4-bit select input
    input [15:0] in;     // 16-bit input data
    output reg out;      // Single-bit output
    
    always @(*) begin
        case (s)
            4'b0000: out = in[0];
            4'b0001: out = in[1];
            4'b0010: out = in[2];
            4'b0011: out = in[3];
            4'b0100: out = in[4];
            4'b0101: out = in[5];
            4'b0110: out = in[6];
            4'b0111: out = in[7];
            4'b1000: out = in[8];
            4'b1001: out = in[9];
            4'b1010: out = in[10];
            4'b1011: out = in[11];
            4'b1100: out = in[12];
            4'b1101: out = in[13];
            4'b1110: out = in[14];
            4'b1111: out = in[15];
            default: out = 1'b0; // Optional default case
        endcase
    end
endmodule*/

//Data flow modelling
module mux16_1 (
    input [3:0] s,        // 4-bit select input
    input [15:0] in,      // 16-bit input data
    output out            // Single-bit output
);
    assign out = (s == 4'b0000) ? in[0] :
                 (s == 4'b0001) ? in[1] :
                 (s == 4'b0010) ? in[2] :
                 (s == 4'b0011) ? in[3] :
                 (s == 4'b0100) ? in[4] :
                 (s == 4'b0101) ? in[5] :
                 (s == 4'b0110) ? in[6] :
                 (s == 4'b0111) ? in[7] :
                 (s == 4'b1000) ? in[8] :
                 (s == 4'b1001) ? in[9] :
                 (s == 4'b1010) ? in[10] :
                 (s == 4'b1011) ? in[11] :
                 (s == 4'b1100) ? in[12] :
                 (s == 4'b1101) ? in[13] :
                 (s == 4'b1110) ? in[14] :
                 (s == 4'b1111) ? in[15] :
                 1'b0; // Default case
endmodule

