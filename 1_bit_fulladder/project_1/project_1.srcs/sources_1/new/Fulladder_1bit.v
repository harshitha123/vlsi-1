`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2017 09:23:35 PM
// Design Name: 
// Module Name: Fulladder_1bit
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


module Fulladder_1bit(
//Declaration of input and output variables which are used in module.
input A,B,Cin,
output reg S,Cout
);
//Block is triggered for the change of any input varaibles.
always @(A or B or Cin)
begin
     S = ((A&B&Cin)|(~A&~B&Cin)|(~A&B&~Cin)|(A&~B&~Cin));
     Cout=(A&B)|(B&Cin)|(Cin&A);
end
endmodule
