`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2024 18:58:25
// Design Name: 
// Module Name: mux8_1_tb
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


module mux8_1_tb();
    reg [2:0] s;          // 3-bit select signal
    reg [7:0] in;         // 8-bit input signals for the 8-to-1 mux
    wire out;             // Output of the mux
    integer i;

    // Instantiate the 8-to-1 multiplexer module
    mux8_1 DUT (
        .s(s),
        .in(in),
        .out(out)
    );

    initial begin
        // Initialize input with a test pattern
        in = 8'b10101010;   // Set a pattern for testing purposes
        s = 3'b000;         // Start with the first select value
    end 

    initial begin
        // Loop through all possible values of the select signal
        for (i = 0; i < 8; i = i + 1) begin
            s = i;          // Assign the loop index to the select signal
            #10;            // Wait for the output to stabilize
        end
    end

    // Monitor output
    initial
        $monitor("Input s=%b, in=%b, output out=%b", s, in, out);

    // End the simulation after sufficient time
    initial
        #1000 $finish;
endmodule


