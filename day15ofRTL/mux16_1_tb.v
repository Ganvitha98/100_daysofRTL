`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2024 19:54:29
// Design Name: 
// Module Name: mux16_1_tb
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

module mux16_1_tb();
    reg [3:0] s;          
    reg [15:0] in;        
    wire out;             
    integer i;
   // Instantiate the 16-to-1 multiplexer module
    mux16_1 DUT (
        .s(s),
        .in(in),
        .out(out)
    );

    initial begin
        in = 16'b1010101010101010;  
        s = 4'b0000;                
    end 
initial
 begin
          for (i = 0; i < 16; i = i + 1) begin
            s = i;                  
            #10;                    
        end
    end
    initial
        $monitor("Select s=%b, Inputs in=%b, Output out=%b", s, in, out);
    initial
        #200 $finish;
endmodule

