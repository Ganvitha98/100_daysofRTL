`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2024 20:46:34
// Design Name: 
// Module Name: decoder2_4_tb
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


module tb_decoder_2to4;
    reg a, b;          // Test inputs
    wire y0, y1, y2, y3;  // Test outputs

    // Instantiate the decoder
    decoder_2to4 uut (
        .a(a),
        .b(b),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3)
    );

    initial begin
        // Monitor changes in inputs and outputs
        $monitor($time, " a=%b, b=%b | y0=%b, y1=%b, y2=%b, y3=%b", a, b, y0, y1, y2, y3);

        // Apply test cases
        a = 0; b = 0; #10;  // Test case 1
        a = 0; b = 1; #10;  // Test case 2
        a = 1; b = 0; #10;  // Test case 3
        a = 1; b = 1; #10;  // Test case 4

        $finish;  // End simulation
    end
endmodule
