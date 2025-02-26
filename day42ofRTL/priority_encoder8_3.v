`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2024 19:53:13
// Design Name: 
// Module Name: priority_encoder8_3
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


module priority_encoder8_3(input [7:0] d, output reg [2:0] y, output reg valid);
    always @(d)
    begin
        case (d)
            8'b10000000: begin y = 3'b111; valid = 1'b1; end
            8'b01xxxxxx: begin y = 3'b110; valid = 1'b1; end
            8'b001xxxxx: begin y = 3'b101; valid = 1'b1; end
            8'b0001xxxx: begin y = 3'b100; valid = 1'b1; end
            8'b00001xxx: begin y = 3'b011; valid = 1'b1; end
            8'b000001xx: begin y = 3'b010; valid = 1'b1; end
            8'b0000001x: begin y = 3'b001; valid = 1'b1; end
            8'b00000001: begin y = 3'b000; valid = 1'b1; end
            default: begin y = 3'b000; valid = 1'b0; end
        endcase
    end
endmodule
