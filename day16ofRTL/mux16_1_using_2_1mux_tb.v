`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2024 22:11:18
// Design Name: 
// Module Name: mux16_1_using_2_1mux_tb
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


module mux16_1_using2_1mux_tb();
    reg [3:0] s;          
    reg [15:0] in;      
    wire out;            
    integer i;

    // Instantiate the 16-to-1 multiplexer module
    mux16_1mux_using2_1 DUT (
        .s(s),
        .in(in),
        .out(out)
    );

    initial begin
        // Initialize input with a test pattern
        in = 16'b1010101010101010;   
        s = 4'b0000;                 
    end 

    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            s = i;        
            #10;            
        end
    end

    // Monitor output
    initial
        $monitor("Input s=%b, in=%b, output out=%b", s, in, out);
    initial
        #200 $finish; 
endmodule
