`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2024 19:42:12
// Design Name: 
// Module Name: mux4_1_tb
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


module tb_demux1_4;

    reg in;
    reg [1:0] sel;
    wire [3:0] y;

    // Instantiate the demux1_4 module
    demux1_4 uut (
        .in(in),
        .sel(sel),
        .y(y)
    );

    // Apply test vectors
    initial begin
        // Display the results for easy debugging
        $monitor("Time = %0t | in = %b, sel = %b | y = %b", $time, in, sel, y);

        // Initialize inputs
        in = 0; sel = 2'b00;

        // Test case 1: sel = 00, in = 1
        #10 in = 1; sel = 2'b00;
        #10 in = 0; sel = 2'b00;  // Reset to 0

        // Test case 2: sel = 01, in = 1
        #10 in = 1; sel = 2'b01;
        #10 in = 0; sel = 2'b01;  // Reset to 0

        // Test case 3: sel = 10, in = 1
        #10 in = 1; sel = 2'b10;
        #10 in = 0; sel = 2'b10;  // Reset to 0

        // Test case 4: sel = 11, in = 1
        #10 in = 1; sel = 2'b11;
        #10 in = 0; sel = 2'b11;  // Reset to 0

        // Test case 5: sel = 00, in = 0
        #10 in = 0; sel = 2'b00;

        // Test case 6: sel = 01, in = 0
        #10 in = 0; sel = 2'b01;

        // Test case 7: sel = 10, in = 0
        #10 in = 0; sel = 2'b10;

        // Test case 8: sel = 11, in = 0
        #10 in = 0; sel = 2'b11;

        // Finish the simulation
        #10 $finish;
    end

endmodule


