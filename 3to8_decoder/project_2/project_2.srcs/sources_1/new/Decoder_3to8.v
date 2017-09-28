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
//code of n input lines into a one out of 2n output code.
// Dependencies:None  
// Revision:1
// Additional Comments: 
// 
//////////////////////////////////////////////////////////////////////////////////



module Decoder_3to8(
    //inputand output declarations for module
    input A,B,C,G2A,G2B,G1,Vcc,GND,
    output reg  [7:0] Y
);
//Block is triggered at the change of any input values.
always @(A or B or C or G2A or G2B or G1 or Vcc or GND)
begin
    //Decoder is enabled.
    if(Vcc==1 && GND==0 && G2A==1 && G2B==1 && G1==1)
    begin
    if(A==0 && B==0 && C==0)
    Y=8'b00000001;
    else if(A==0 && B==0 && C==1)
    Y=8'b00000010;
    else if (A==0 && B==1 && C==0)
    Y=8'b00000100;
    else if (A==0 && B==1 && C==1)
    Y=8'b00001000;
    else if (A==1 && B==0 && C==0)
    Y=8'b00010000;
    else if (A==1 && B==0 && C==1)
    Y=8'b00100000;
    else if (A==1 && B==1 && C==0)
    Y=8'b01000000;
    else if (A==1 && B==1 && C==1)
    Y=8'b10000000;
    else 
    Y=8'bxxxxxxxx;
    end
end
endmodule
