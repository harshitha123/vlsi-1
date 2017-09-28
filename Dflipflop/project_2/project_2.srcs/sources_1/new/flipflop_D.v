`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2017 11:03:43 PM
// Design Name: 
// Module Name: flipflop_D
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


module flipflop_D(
//input and output variables
input d,clk,
output reg q
    );
//block can be triggered
always@(*)
begin
if(clk==1)
q=d;
end
endmodule
