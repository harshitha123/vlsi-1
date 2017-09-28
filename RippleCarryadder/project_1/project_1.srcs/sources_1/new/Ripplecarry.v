`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2017 11:23:16 PM
// Design Name: 
// Module Name: Ripplecarry
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
//Half adder
module half_addr(

output sum,carry,
input x,y
);
assign sum =x^y;
assign carry=x&y;
endmodule

//fulladder
module full_addr(
output sum,cout,
input x,y,z);
wire w1,w2,w3;
half_addr h1(w1,w2,x,y);
half_addr h2(sum,w3,w1,z);
or(cout,w2,w3);
endmodule

module Ripplecarry(
output[3:0]sum,output cout, input[3:0]A,B,input C);
wire w4,w5,w6;
full_addr F1(sum[0],w4,A[0],B[0],C);
full_addr F2(sum[1],w5,A[1],B[1],w4);
full_addr F3(sum[2],w6,A[2],B[2],w5);
full_addr F4(sum[3],cout,A[3],B[3],w6);
endmodule
