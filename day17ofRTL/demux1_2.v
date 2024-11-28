`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2024 20:02:56
// Design Name: 
// Module Name: demux1_2
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

/*module demux_1_to_2 (
    input  in,      
    input sel,     
    output reg out0,    
    output reg out1
);

    always @(*) 
    begin
        if (sel == 0) 
        begin
            out0 = in;  
            out1 = 0;   
        end 
        else
         begin
            out0 = 0;  
            out1 = in;  
        end
        end
endmodule
*/
/*module demux_1_to_2 (
    input  in,       // Input signal
    input  sel,      // Select signal
    output reg out0, // Output 0
    output reg out1  // Output 1
);

    always @(*) begin
        // Using case statement for select line
        case (sel)
            1'b0: begin
                out0 = in;  // Route input to out0
                out1 = 0;   // Set out1 to 0
            end
            1'b1: begin
                out0 = 0;   // Set out0 to 0
                out1 = in;  // Route input to out1
            end
            default: begin
                out0 = 0;   // Default case: outputs are 0
                out1 = 0;
            end
        endcase
    end

endmodule*/
//Data flow modelling
 /*module demux1_2 (in,sel,y);
    input  in;     
    input sel;     
    output [1:0]y; 
    assign y[0]=(~sel)&(in);
    assign y[1]=(sel)&(in);
    endmodule
    */
    module demux1_2_behav (in, sel, y);
    input in;      // Input signal
    input sel;     // Selection signal
    output reg [1:0] y; // 2-bit output (using reg type for procedural assignment)
    
    // Behavioral description using case statement
    always @(*) begin
        case(sel)
            1'd0: y[0] = in;  // If sel = 0, y[0] = in, y[1] = 0
            1'd1: y[1] = in;  // If sel = 1, y[0] = 0, y[1] = in
            default: y = 2'b00; // Default case to avoid latches (not really needed here)
        endcase
    end
endmodule
