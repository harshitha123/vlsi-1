`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2017 09:37:19 PM
// Design Name: 
// Module Name: Fulladder_1bittb
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


module Fulladder_1bittb();
//Declare input and output variables for test bench.
reg A,B,Cin;
wire S,Cout;
//Invoke design source from test bench
Fulladder_1bit adder(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));
initial
begin
A=0;B=0;Cin=0;
#100
A=0;B=0;Cin=1;
#100
A=0;B=1;Cin=0;
#100
A=0;B=1;Cin=1;
#100
A=1;B=0;Cin=0;
#100
A=1;B=0;Cin=1;
#100
A=1;B=1;Cin=0;
#100
A=1;B=1;Cin=1;
end
endmodule
