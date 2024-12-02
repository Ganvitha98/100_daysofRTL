`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2024 20:15:30
// Design Name: 
// Module Name: demux1_16_tb
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


module demux1_16_tb;

    reg in;                   
    reg [3:0] sel;            
    wire [15:0] y;           
    integer i;                

    // Instantiate the DEMUX module
    demux1_16 DUT (
        .in(in),
        .sel(sel),
        .y(y)
    );

    initial begin
        in = 1;
        for (i = 0; i < 16; i = i + 1) begin
            sel = i;          
            #10;              
        end
        in = 0;
        for (i = 0; i < 16; i = i + 1) begin
            sel = i;          
            #10;              
        end
    end

    initial
        $monitor("Time=%0t | Input in=%b, Select sel=%b, Outputs y=%b", $time, in, sel, y);
    initial
        #500 $finish;

endmodule
