`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2024 17:13:41
// Design Name: 
// Module Name: alu_tb
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



module alu_tb();
 //Testbench global variables
 reg [7:0]a_in,b_in;
 reg [3:0]command_in;
 reg oe;
 wire [15:0]d_out;
 
 //Variables for iteration of the loops 
 integer m,n,o;
 //Parameter constants used for displaying the strings during operation
 
parameter ADD = 4'b0000, // Add two 8 bit numbers a_in and b_in.
 INC = 4'b0001, // Increment a_in by 1. 
 SUB = 4'b0010, // Subtracts b_in from a_in.
 DEC = 4'b0011, // Decrement a_in by 1.
 MUL = 4'b0100, // Multiply 4 bit numbers a_in and b_in.
 DIV = 4'b0101, // Divide a_in by b_in.
 SHL = 4'b0110, // Shift a_in to left side by 1 bit.
 SHR = 4'b0111, // Shift a_in to right by 1 bit.
 AND = 4'b1000, // Logical AND operation
 OR = 4'b1001, // Logical OR operation
 INV = 4'b1010, // Logical Negation
 NAND = 4'b1011, // Bitwise NAND
 NOR = 4'b1100, // Bitwise NOR
 XOR = 4'b1101, // Bitwise XOR
 XNOR = 4'b1110, // Bitwise XNOR
 BUF = 4'b1111; // BUF
 
 //Internal register for storing the string values
 reg [4*8:0]string_cmd;
 //Step1 : Instantiate the design ALU
 
 alu DUT (a_in,b_in,command_in,oe,d_out);
 
 //Step2 : Write a_in task named "initialize" to initialize the inputs of 

 //Tasks used for generating stimulus
task initialize;
begin
{a_in,b_in,command_in,oe} = 0;
end
endtask
 task en_oe(input i);
 begin
 oe=i;
 end
 endtask
 task inputs(input [7:0]j,k);
 begin
 a_in=j;
 b_in=k;
 end
 endtask
 task cmd(input [3:0]l);
 begin
 command_in=l;
end
 endtask
 task delay();
 begin
 #10;
 end
 endtask
 
 //Process to hold the string values as per the commands.
 always@(command_in)
 begin
 case(command_in)
 ADD : string_cmd = "ADD";
 INC : string_cmd = "INC";
 SUB : string_cmd = "SUB";
 DEC : string_cmd = "DEC";
 MUL : string_cmd = "MUL";
 DIV : string_cmd = "DIV";
 SHL : string_cmd = "SHL";
 SHR : string_cmd = "SHR";
 INV : string_cmd = "INV";
 AND : string_cmd = "AND";
 OR : string_cmd = "OR";
 NAND : string_cmd = "NAND";
 NOR : string_cmd = "NOR";
 XOR : string_cmd = "XOR";
 XNOR : string_cmd = "XNOR";
 BUF : string_cmd = "BUF";
 endcase
 end
 
 //Process used for generating stimulus by calling tasks & passing values
 initial
 begin
 initialize;
 en_oe(1'b1);
 for(m=0;m<16;m=m+1)
 begin
 for(n=0;n<16;n=n+1)
 begin
 inputs(m,n);
 for(o=0;o<16;o=o+1)
 begin
 command_in=o;
 delay;
 end
 end
 end 
 /*en_oe(0);
 inputs(8'd20,8'd10);
 cmd(ADD);
 delay;*/
 
 en_oe(1);
 inputs(8'd25,8'd17);
 cmd(ADD);
 delay; 
 
 $finish;
end
//Process to monitor the changes in the variables 
 initial
 $monitor("Input oe=%b, a_in=%b, b_in=%b, command_in=%s, Output d_out=%b",oe,a_in,b_in,string_cmd,d_out);
 
 
endmodule