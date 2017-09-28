`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2017 02:30:11 PM
// Design Name: 
// Module Name: 16_bit_CarryLookAheadAdder
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

//16 bit carry look ahead adder implementation
module CarryLookAheadAdder_16bit(
input C0, [15:0]A,[15:0]B,output Cout,
output [15:0]S ,
output P1,G1

);
wire C1,C2,C3;
wire [15:0] P; wire [15:0]G;
//Invoking 4 bit carrylookahead adder
CarryLookAheadAdder4bit CLA1 (.A(A[3:0]),.B(B[3:0]),.S(S[3:0]),.C0(C0),.Cout(C1),.P(P[3:0]),.G(G[3:0]));
CarryLookAheadAdder4bit CLA2 (.A(A[7:4]),.B(B[7:4]),.S(S[7:4]),.C0(C1),.Cout(C2),.P(P[7:4]),.G(G[7:4]));
CarryLookAheadAdder4bit CLA3 (.A(A[11:8]),.B(B[11:8]),.S(S[11:8]),.C0(C2),.Cout(C3),.P(P[11:8]),.G(G[11:8]));
CarryLookAheadAdder4bit CLA4 (.A(A[15:12]),.B(B[15:12]),.S(S[15:12]),.C0(C3),.Cout(Cout),.P(P[15:12]),.G(G[15:12]));
assign P1=P[15];
assign G1=G[15];

endmodule

//1  bit adder
module PartialAdder(
    input A,B,C,
    output S
);
wire S1;
assign S1=(A&~B)|(~A&B);
assign S=(S1&~C)|(~S1&C);
endmodule

//Module to generate propogate and generate fumctions
module PGenerator(
    input A,B,
    output  G,P
);
assign G=A&B;
assign P=(A&~B)|(~A&B);
endmodule

//Logic implementation for 4 bit carrylookahead adder.
module CarryLookAheadAdder4bit(
    input [3:0]A,[3:0]B,input C0,
    output reg [1:0] Cout, [3:0]S,
     output  [3:0] P ,output  [3:0]G
   
);
   
    wire C1,C2,C3;
    PGenerator pg0(.A(A[0]),.B(B[0]),.G(G[0]),.P(P[0]));
    PGenerator pg1(.A(A[1]),.B(B[1]),.G(G[1]),.P(P[1]));
    PGenerator pg2(.A(A[2]),.B(B[2]),.G(G[2]),.P(P[2]));
    PGenerator pg3(.A(A[3]),.B(B[3]),.G(G[3]),.P(P[3]));
    
    //calculating carry generated for each bit.
    assign C1=G[0]|(P[0]&C0);
    assign C2=G[1]|(P[1]&G[0])|(P[0]&P[1]&C0);
    assign C3=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C0);
    always @* begin
     Cout=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&C0);
    end 
    
    
    //Invoking 1 bit adder.
    PartialAdder p1(.A(A[0]),.B(B[0]),.C(C0),.S(S[0]));
    PartialAdder p2 (.A(A[1]),.B(B[1]),.C(C1),.S(S[1]));
    PartialAdder p3 (.A(A[2]),.B(B[2]),.C(C2),.S(S[2]));
    PartialAdder p4(.A(A[3]),.B(B[3]),.C(C3),.S(S[3]));
     
endmodule

