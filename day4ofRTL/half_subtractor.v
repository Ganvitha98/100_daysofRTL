`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2024 18:36:58
// Design Name: 
// Module Name: half_subtractor
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
/*module half_subtractor(input a,b,output diff,borrow);
xor(diff,a,b); 
and(borrow,abar,b); //and(borrow,~a,b);not gate is not needed
not(abar,a);
endmodule*/

//data flow level modelling
/*module half_subtractor(input a,b,output diff,borrow);
assign diff = a^b; 
assign borrow=(~a)&b;
endmodule*/

//behavioral modelling
module half_subtractor(input a,b,output reg diff,borrow);
always@(*)
begin
diff = a^b; 
borrow=(~a)&b;
end 
endmodule

