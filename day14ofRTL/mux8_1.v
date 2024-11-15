`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Name:Anvitha
// Module Name: mux8_1
// 
// 
//////////////////////////////////////////////////////////////////////////////////


module mux8_1(s,in,out);
input [2:0]s;
input [7:0]in;
output reg out;
always@(*)
begin
case(s)
3'b000:out=in[0];
3'b001:out=in[1];
3'b010:out=in[2];
3'b011:out=in[3];
3'b100:out=in[4];
3'b101:out=in[5];
3'b110:out=in[6];
3'b111:out=in[7];
default:out=1'b0;
endcase
end
endmodule

//Data flow modelling
/*module mux8to1_dataflow (  
    input [2:0] s,
    input [7:0] in, 
    output out);
    assign out = (s == 3'b000) ? in[0] :
                 (s == 3'b001) ? in[1] :
                 (s == 3'b010) ? in[2] :
                 (s == 3'b011) ? in[3] :
                 (s == 3'b100) ? in[4] :
                 (s == 3'b101) ? in[5] :
                 (s == 3'b110) ? in[6] :
                 (s == 3'b111) ? in[7] :
                 1'b0; // Default case
                 
endmodule*/
