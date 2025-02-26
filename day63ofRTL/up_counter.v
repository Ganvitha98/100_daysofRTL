`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2025 19:52:54
// Design Name: 
// Module Name: up_counter
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


module async_up_counter (
    input clk,       // Clock input
    input reset,     // Asynchronous reset input
    output reg [2:0] count // 3-bit counter output
);
    
    // Asynchronous reset
    always @(posedge clk or posedge reset) begin
        if (reset) 
            count <= 3'b000;  // Reset to 0
        else 
            count <= count + 1;  // Increment counter
    end

endmodule 

/*module async_up_counter (
    input clk,       // Clock input
    input reset,     // Asynchronous reset input
    output reg [2:0] count // 3-bit counter output
);
    
    // Asynchronous reset
    always @(posedge clk ) begin
        if (reset) 
            count <= 3'b000;  // Reset to 0
        else 
            count <= count + 1;  // Increment counter
    end

endmodule*/ 


