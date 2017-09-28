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


module CarryLookAheadAdder_tb();
 reg  [15:0] A; reg [15:0] B; reg C0;
 wire  [15:0]S; wire Cout;
 wire P;wire G;

//Design module is triggered 
 CarryLookAheadAdder_16bit CLA(.A(A),.B(B),.S(S),.Cout(Cout),.C0(C0),.P1(P),.G1(G));
 
 //Test cases are assigned
 initial begin
 A=16'b1111111100011111;B=16'b1111111111110001;C0=1'b1;
 #100
 A=16'b1101010101010101;B=16'b0100000011110110;C0=1'b1;
 #100
 A=14;B=15;C0=1'b1;
 #100
 A=1;B=2;C0=1'b0;
 #100
 A=3;B=9;C0=1'b0;
 #100
 A=1;B=6;C0=1'b1;
end
endmodule
