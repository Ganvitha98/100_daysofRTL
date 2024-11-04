`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2024 19:22:11
// Design Name: 
// Module Name: full_subtractor
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

//gate level modelling
/*module full_subtractor(input a,b,bin, output diff,borrow);
wire w1,w2,w3,abar,bbar;
xor(w1,a,b);
xor(diff,w1,bin);
and(w2,abar,b);
and(w3,bbar,bin);
not(abar,a); 
not(bbar,w1);
or(borrow,w3,w2);
endmodule*/

//data flow level of abstration
/*module full_subtractor(input a,b,bin, output diff,borrow);
assign diff=a^b^bin; 
assign borrow=(~a&b)|(~a&c)|(b&c);
endmodule*/

//behavioral level modeliing
module full_subtractor(input a,b,bin, output reg diff,borrow);
always@(*)
begin
diff=a^b^bin; 
borrow=(~a&b)|(~a&c)|(b&c);
end
endmodule