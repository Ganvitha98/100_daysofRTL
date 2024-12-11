`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2024 17:24:03
// Design Name: 
// Module Name: pos_4_1mux_tb
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


module pos_4_1mux_tb;
    // Inputs
    reg a, b, c;

    // Output
    wire y;

    // Instantiate the DUT (Device Under Test)
    pos_4_1mux uut (
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );

    initial begin
        // Monitor signal changes
        $monitor("Time=%0t | a=%b, b=%b, c=%b | y=%b", $time, a, b, c, y);

        // Apply test cases
        {a, b, c} = 3'b000; #10;
        {a, b, c} = 3'b001; #10;
        {a, b, c} = 3'b010; #10;
        {a, b, c} = 3'b011; #10;
        {a, b, c} = 3'b100; #10;
        {a, b, c} = 3'b101; #10;
        {a, b, c} = 3'b110; #10;
        {a, b, c} = 3'b111; #10;

        $finish; // End simulation
    end
endmodule
