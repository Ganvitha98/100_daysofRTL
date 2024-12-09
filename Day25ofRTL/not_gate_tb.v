`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 14:27:26
// Design Name: 
// Module Name: not_gate_tb
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


`timescale 1ns/1ps

module not_gate_tb;
    reg a;          
    wire y;        
    not_gate uut (
        .a(a),
        .y(y)
    );

    
    initial begin
        $monitor("%4dns | a = %b | y = %b", $time, a, y);
    end

    initial
     begin
         a = 0;  
        #10;    

        a = 1;  
        #10;    

        $finish;  
    end
endmodule
