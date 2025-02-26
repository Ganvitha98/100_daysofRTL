`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 19:35:09
// Design Name: 
// Module Name: decoder3_8using2_4_tb
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

module tb_decoder3to8;
    reg c;
    reg a, b;
    wire y0, y1, y2, y3, y4, y5, y6, y7;

    // Instantiate the 3-to-8 decoder
    decoder_3to8 uut (
        .c(c),
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
    );

    initial begin
        // Display header
        $display("c a b | y7 y6 y5 y4 y3 y2 y1 y0");

        // Iterate through all possible input combinations
        for (integer i = 0; i < 8; i = i + 1) begin
            {c, a, b} = i;
            #10; // Wait for 10 time units
            $display("%b %b %b | %b  %b  %b  %b  %b  %b  %b  %b", 
                c, a, b, y7, y6, y5, y4, y3, y2, y1, y0);
        end

        $stop;
    end
endmodule

