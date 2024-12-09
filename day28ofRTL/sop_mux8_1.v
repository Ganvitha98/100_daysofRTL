`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 19:18:19
// Design Name: 
// Module Name: sop_mux8_1
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


module sop_8_1_tb;
    reg a, b, c, d;
    wire y;

    // Instantiate the SOP implementation
    sop_8_1 uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .y(y)
    );

    initial begin
        $monitor("Time=%0t | a=%b, b=%b, c=%b, d=%b | y=%b", $time, a, b, c, d, y);

        // Apply test cases
        {a, b, c, d} = 4'b0000; #10;
        {a, b, c, d} = 4'b0001; #10;
        {a, b, c, d} = 4'b0010; #10;
        {a, b, c, d} = 4'b0011; #10;
        {a, b, c, d} = 4'b0100; #10;
        {a, b, c, d} = 4'b0101; #10;
        {a, b, c, d} = 4'b0110; #10;
        {a, b, c, d} = 4'b0111; #10;
        {a, b, c, d} = 4'b1000; #10;
        {a, b, c, d} = 4'b1001; #10;
        {a, b, c, d} = 4'b1010; #10;
        {a, b, c, d} = 4'b1011; #10;
        {a, b, c, d} = 4'b1100; #10;
        {a, b, c, d} = 4'b1101; #10;
        {a, b, c, d} = 4'b1110; #10;
        {a, b, c, d} = 4'b1111; #10;

        $finish; // End simulation
    end
endmodule
