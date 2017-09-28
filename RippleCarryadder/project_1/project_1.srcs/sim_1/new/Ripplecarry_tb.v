`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2017 11:40:57 PM
// Design Name: 
// Module Name: Ripplecarry_tb
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


module Ripplecarry_tb(
);
wire[3:0]sum;wire cout; reg[3:0]A,B;reg C;
Ripplecarry rip(.sum(sum),.cout(cout),.A(A),.B(B),.C(C));
initial
begin
A=4'b0111; B=4'b1111;C=0;
#100
A=4'b0010; B=4'b1000;C=1;
#100
A=4'b0010; B=4'b1001;C=1;
#100
A=4'b1001; B=4'b1011;C=1;
#100
A=4'b0001; B=4'b0000;C=0;
#100
A=4'b0001; B=4'b0001;C=1;
end
endmodule                

