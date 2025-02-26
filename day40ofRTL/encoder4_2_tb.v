`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2024 18:40:13
// Design Name: 
// Module Name: encoder4_2_tb
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


module encoder4_2_tb;
    reg [3:0] d;
    wire [1:0] y;

    // Instantiate the encoder module
    encoder4_2 uut (
        .d(d),
        .y(y)
    );

    initial begin
        $monitor("Time=%0t | d=%b | y=%b", $time, d, y);

        d = 4'b0001; #10; // Test LSB
        d = 4'b0010; #10; // Test second bit
        d = 4'b0100; #10; // Test third bit
        d = 4'b1000; #10; // Test MSB
        d = 4'b0000; #10; // Test no active input
        d = 4'b1010; #10; // Test multiple active inputs
        $stop;
    end
endmodule
