`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:The University of Texas at San Antonio
// Engineer: Harshitha Yendapally
// Create Date: 09/10/2017 05:52:10 PM
// Abstraction Level: Behavioural/Algorithmic 
// Module Name: Decoder_3to8
// Project Name: MultiplexerDesign
// Target Devices: IC74AC11138
// Tool Versions: Vivado 2016.4
// Description: A binary decoder is a multi-input, multi-output combinational circuit that converts a binary
// code of n input lines into a one out of 2n output code.
// Dependencies:None  
// Revision:1
// Additional Comments: 
// 
//////////////////////////////////////////////////////////////////////////////////


module Decoder_3to8_tb(

    );
//Declaration of input and output variables for testbench.
reg A,B,C,G2A,G2B,G1,Vcc,GND;
wire  [7:0] Y;
//Invoking the source in testbench
Decoder_3to8 demux(.A(A),.B(B),.C(C),.G2A(G2A),.G2B(G2B),.G1(G1),.Vcc(Vcc),.GND(GND),.Y(Y));
initial begin
//IC enabled
Vcc=1;GND=0;G2A=1;G2B=1;G1=1;
A=1;B=1;C=1;
#100
A=0;B=0;C=1;
#100
A=0;B=1;C=0;
#100
A=0;B=1;C=1;
//IC disabled
#100
Vcc=0;GND=0;G2A=1;G2B=1;G1=1;
A=0;B=0;C=0;
end
endmodule
