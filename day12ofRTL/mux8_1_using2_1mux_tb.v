`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2024 21:37:45
// Design Name: 
// Module Name: mux8_1_using2_1mux_tb
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


/*module mux8_1using2_1mux_tb();
reg [2:0]s;
reg [7:0]in;
wire out;
integer i;
mux8_1_using2_1mux DUT(s,in,out);
initial
begin
in=10101010;
{s}=3'b000;
end 
initial
begin
for(i=0;i<8;i=i+1)
begin
{s}=i;
#10;
end 
end
initial
$monitor("Input s=%b,in=%b, output out=%b",s,in,out);
initial
#500 $finish;
endmodule
*/
module mux8_1_using2_1mux_tb();
    reg [2:0] s;          // 3-bit select signal
    reg [7:0] in;         // 8-bit input signals for the 8-to-1 mux
    wire out;             // Output of the mux
    integer i;

    // Instantiate the 8-to-1 multiplexer module
    mux8_1_using2_1mux DUT (
        .s(s),
        .in(in),
        .out(out)
    );

    initial begin
        // Initialize input with a test pattern
        in = 8'b10101010;   // Set a pattern for testing purposes
        s = 3'b000;         // Start with the first select value
    end 

    initial begin
        // Loop through all possible values of the select signal
        for (i = 0; i < 8; i = i + 1) begin
            s = i;          // Assign the loop index to the select signal
            #10;            // Wait for the output to stabilize
        end
    end

    // Monitor output
    initial
        $monitor("Input s=%b, in=%b, output out=%b", s, in, out);

    // End the simulation after sufficient time
    initial
        #1000 $finish;
endmodule

