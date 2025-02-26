`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2024 20:07:41
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder8_3_tb;

    // Declare the input and output signals
    reg [7:0] d;        // 8-bit input to the encoder
    wire [2:0] y;       // 3-bit output from the encoder
    wire valid;         // Output valid signal

    // Instantiate the priority encoder module
    priority_encoder8_3 uut (
        .d(d),
        .y(y),
        .valid(valid)
    );

    // Test sequence for different input combinations
    initial begin
        // Initialize inputs
        $display("Starting testbench...");

        // Test case 1: Input 0 active
        d = 8'b00000001; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 2: Input 1 active
        d = 8'b00000010; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 3: Input 2 active
        d = 8'b00000100; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 4: Input 3 active
        d = 8'b00001000; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 5: Input 4 active
        d = 8'b00010000; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 6: Input 5 active
        d = 8'b00100000; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 7: Input 6 active
        d = 8'b01000000; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 8: Input 7 active
        d = 8'b10000000; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 9: No input active
        d = 8'b00000000; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 10: Multiple inputs active (Input 1 and 2)
        d = 8'b00000110; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 11: Multiple inputs active (Input 5 and 6)
        d = 8'b01100000; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Test case 12: Random combination of inputs
        d = 8'b01010101; #10;
        $display("d = %b, y = %b, valid = %b", d, y, valid);

        // Finish the simulation
        $finish;
    end
endmodule
