`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 20:18:24
// Design Name: 
// Module Name: decoder4_16_tb
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

module tb_decoder_4to16;
    reg d, c, b, a;
    wire y0, y1, y2, y3, y4, y5, y6, y7;
    wire y8, y9, y10, y11, y12, y13, y14, y15;

    // Instantiate the 4-to-16 decoder
    decoder_4to16 uut (
        .d(d), .c(c), .b(b), .a(a),
        .y0(y0), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6), .y7(y7),
        .y8(y8), .y9(y9), .y10(y10), .y11(y11), .y12(y12), .y13(y13), .y14(y14), .y15(y15)
    );

    initial begin
        $display("d c b a | y15 y14 y13 y12 y11 y10 y9 y8 y7 y6 y5 y4 y3 y2 y1 y0");
        
        for (integer i = 0; i < 16; i = i + 1) begin
            {d, c, b, a} = i;
            #10; // Wait for 10 time units
            $display("%b %b %b %b | %b  %b  %b  %b  %b  %b  %b  %b  %b  %b  %b  %b",
                     d, c, b, a, y15, y14, y13, y12, y11, y10, y9, y8, y7, y6, y5, y4, y3, y2, y1, y0);
        end
        
        $stop;
    end
endmodule

