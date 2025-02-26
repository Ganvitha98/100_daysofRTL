`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2024 20:08:35
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
    reg [3:0] a;           // 4-bit input
    wire [15:0] y;         // 16 outputs
    integer i;

    // Instantiate the 4-to-16 decoder
    decoder_4to16 uut (
        .a(a),
        .y(y)
    );

    initial begin
        $monitor("Time = %0t | a = %b | y = %b", $time, a, y);

        // Test all possible input combinations
        for (i = 0; i < 16; i = i + 1) begin
            a = i;         // Assign the value of 'i' to 'a'
            #10;           // Wait for 10 time units
        end

        $finish;
    end
endmodule

