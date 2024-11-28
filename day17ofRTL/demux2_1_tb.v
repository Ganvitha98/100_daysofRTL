`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2024 20:18:50
// Design Name: 
// Module Name: demux2_1_tb
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


module tb_demux1_2;
    reg in;      // Input signal
    reg sel;     // Selection signal
    wire [1:0] y; // Output wire

    // Instantiate the demux1_2 module
    demux1_2 uut (
        .in(in),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Monitor output
        $monitor("Time = %0t | in = %b, sel = %b, y = %b", $time, in, sel, y);

        // Apply test vectors
        in = 1; sel = 0; #10;  // in = 1, sel = 0 -> y = 2'b10
        in = 1; sel = 1; #10;  // in = 1, sel = 1 -> y = 2'b01
        in = 0; sel = 0; #10;  // in = 0, sel = 0 -> y = 2'b00
        in = 0; sel = 1; #10;  // in = 0, sel = 1 -> y = 2'b00
        $finish;
    end
endmodule
