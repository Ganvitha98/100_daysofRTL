`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2024 19:38:25
// Design Name: 
// Module Name: mux4_1
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


/*module demux4_1 (
    input wire in,        // Input signal
    input wire [1:0] sel, // 2-bit select signal
    output wire [3:0] y   // 4-bit output
);

    // Internal wires to store the negations of the selection lines
    wire not_sel0, not_sel1;

    // Invert the selection bits
    not (not_sel0, sel[0]);
    not (not_sel1, sel[1]);

    // Generate the four outputs based on the selection
    and (y[0], in, not_sel1, not_sel0); // y[0] gets 'in' when sel = 00
    and (y[1], in, not_sel1, sel[0]);   // y[1] gets 'in' when sel = 01
    and (y[2], in, sel[1], not_sel0);   // y[2] gets 'in' when sel = 10
    and (y[3], in, sel[1], sel[0]);     // y[3] gets 'in' when sel = 11

endmodule*/
module demux1_4(y, in, sel); 
    input in;
    input [1:0] sel;
    output reg [3:0] y;

    always @(*) begin
        y = 4'b0000;  // Default all outputs to 0
        case (sel)
            2'd0: y[0] = in;  // Route 'in' to y[0]
            2'd1: y[1] = in;  // Route 'in' to y[1]
            2'd2: y[2] = in;  // Route 'in' to y[2]
            2'd3: y[3] = in;  // Route 'in' to y[3]
        endcase
    end
endmodule

