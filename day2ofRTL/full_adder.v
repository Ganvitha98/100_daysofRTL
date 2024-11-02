`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2024 21:20:23
// Design Name: 
// Module Name: full_adder
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

//data flow modelling
/*module full_adder(input a,b,cin,output sum,carry);
assign sum=a^b^cin; 
assign carry=(a&b)|(b&cin)|(cin&a);
endmodule*/


//gate level modelling
module full_adder(input a,b,cin,output sum,carry);
wire w1,c1,c2,c3,out1;
xor x1(w1,a,b);
xor x2(sum,a,b);
and a1(c1,a,b);
and a2(c2,b,cin);
and a3(c3,a,cin);
or o1(out1,c1,c2);
or o2(carry,out1,c3);
endmodule

//behavioral modelling
/*module half_adder(input a,b,cin,output reg sum,carry);
always@(a,b,cin) 
begin
case({a,b,cin})
3'b000:begin 
       sum=1'b0;
       carry=1'b0;
       end
3'b001:begin 
       sum=1'b1;
       carry=1'b0;
       end
3'b010:begin 
       sum=1'b1;
       carry=1'b0;
       end 
3'b011:begin 
       sum=1'b0;
       carry=1'b1;
       end             
3'b100:begin 
       sum=1'b1;
       carry=1'b0;
       end       
3'b101:begin 
       sum=1'b0;
       carry=1'b1;
       end 
3'b110:begin 
       sum=1'b0;
       carry=1'b1;
       end
3'b111:begin 
       sum=1'b1;
       carry=1'b1;
       end  
 endcase
 end
 endmodule */                              
       


