`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2024 17:54:37
// Design Name: 
// Module Name: full_adderusingdecoder_tb
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


module full_adder_usingdecoder_tb;
    reg [2:0] in;
    wire sum, carry;

    // Instantiate the full adder using decoder
    full_adder_usingdecoder uut (
        .in(in),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $monitor("Time=%0t | Input=%b | Sum=%b | Carry=%b", $time, in, sum, carry);

        in = 3'b000; #10;
        in = 3'b001; #10;
        in = 3'b010; #10;
        in = 3'b011; #10;
        in = 3'b100; #10;
        in = 3'b101; #10;
        in = 3'b110; #10;
        in = 3'b111; #10;
        $stop;
    end
endmodule
