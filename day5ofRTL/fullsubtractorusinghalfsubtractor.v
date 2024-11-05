`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 18:55:27
// Design Name: 
// Module Name: fullsubtractorusinghalfsubtractor
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


module fullsubtractorusinghalfsubtractor(input a,b,bin,output diff,borrow);
wire w1,w2,w3;
//half_subtractor H1(w1,w2,a,b);
//half_subtractor H2(diff,w3,w1,bin);
//or A1(borrow,w3,w2);
    // First half subtractor instance
    half_subtractor H1 (
        .diff(w1),
        .borrow(w2),
        .a(a),
        .b(b)
    );

    // Second half subtractor instance
    half_subtractor H2 (
        .diff(diff),    // Final output for diff
        .borrow(w3),
        .a(w1),
        .b(bin)
    );
    or A1(borrow,w3,w2);

endmodule

