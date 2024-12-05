`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2024 20:02:41
// Design Name: 
// Module Name: demux1_32_tb
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

`timescale 1ns / 1ps

module demux1_32_tb;

    // Inputs
    reg in;
    reg [4:0] sel;

    // Outputs
    wire [31:0] y;

    // Instantiate the Unit Under Test (UUT)
    demux1_32 uut (
        .in(in),
        .sel(sel),
        .y(y)
    );
integer i;
    // Testbench logic
    initial begin
        // Loop variable

        // Initialize the input
        in = 1'b1;

        // Monitor the inputs and outputs
        $monitor("Time=%0t | in=%b | sel=%b | y=%b", $time, in, sel, y);

        // Test with random sel values
        for (i = 0; i < 20; i = i + 1) begin
            sel = $random % 32; // Generate random sel (range 0-31)
            #10; // Wait for 10 time units
        end

        // Test specific case: in = 0
        in = 1'b0;
        sel = $random % 32;
        #10;

        // End simulation
        $stop;
    end

endmodule


