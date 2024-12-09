`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 18:08:09
// Design Name: 
// Module Name: sop_expression
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


/*module sop_expression(input a,b,c,d, output out);
mux4_1 mux(.(s[0])(b),
           .(s[1])(a),
           .(in[0])(d),
           .(in[1])((~c)&(~d)),
           .(in[2])(c&d),
           .(in[3])(1'b1),
            .out(out));
endmodule*/
module sop_expression(input a, b, c, d, output out);
    wire [1:0] s;  // Select lines
    wire [3:0] in; // Input lines

    // Assign select lines (s[0] = b, s[1] = a)
    assign s[0] = b;
    assign s[1] = a;

    // Assign inputs to the MUX
    assign in[0] = d;          // in[0] = d
    assign in[1] = (~c) & (~d); // in[1] = (~c) & (~d)
    assign in[2] = c & d;      // in[2] = c & d
    assign in[3] = 1'b1;       // in[3] = 1'b1 (constant 1)

    // Instantiate the 4-to-1 multiplexer
    mux4_1 mux_inst (
        .s(s),    // Connect select lines (s[0] and s[1])
        .in(in),  // Connect input array
        .out(out) // Connect the output
    );

endmodule
