`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2024 21:49:12
// Design Name: 
// Module Name: carry_lookahead_adder_tb
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


module carry_lookahead_adder_tb();
    reg [3:0] a, b;    // 4-bit inputs
    reg cin;           // Carry input
    wire [3:0] sum;    // 4-bit Sum output
    wire cout;         // Carry output

    // Instantiate the CLA module
    carry_lookahead_adder DUT(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Testbench logic
    initial begin
        $monitor("Time = %0t | a = %b | b = %b | cin = %b | sum = %b | cout = %b", 
                 $time, a, b, cin, sum, cout);

        // Apply a range of test vectors
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0000; b = 4'b0001; cin = 0; #10;
        a = 4'b0001; b = 4'b0001; cin = 0; #10;
        a = 4'b0010; b = 4'b0001; cin = 1; #10;
        a = 4'b0011; b = 4'b0011; cin = 0; #10;
        a = 4'b0100; b = 4'b0100; cin = 1; #10;
        a = 4'b0101; b = 4'b0011; cin = 0; #10;
        a = 4'b0110; b = 4'b0101; cin = 1; #10;
        a = 4'b0111; b = 4'b0111; cin = 0; #10;
        a = 4'b1000; b = 4'b1000; cin = 1; #10;
        a = 4'b1001; b = 4'b0110; cin = 0; #10;
        a = 4'b1010; b = 4'b1010; cin = 1; #10;
        a = 4'b1100; b = 4'b1100; cin = 0; #10;
        a = 4'b1101; b = 4'b1010; cin = 1; #10;
        a = 4'b1110; b = 4'b0111; cin = 0; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;

        // Edge cases
        a = 4'b0000; b = 4'b1111; cin = 0; #10;
        a = 4'b1111; b = 4'b0000; cin = 0; #10;
        a = 4'b0000; b = 4'b1111; cin = 1; #10;
        a = 4'b1111; b = 4'b0000; cin = 1; #10;
        a = 4'b1111; b = 4'b1111; cin = 0; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;
        
        $finish;  // End the simulation
    end
endmodule