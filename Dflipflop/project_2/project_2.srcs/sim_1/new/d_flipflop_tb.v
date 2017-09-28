`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2017 11:06:57 PM
// Design Name: 
// Module Name: d_flipflop_tb
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


module flipflop_D_tb(
    );
    //input and output variables to testbench
    reg d;reg clk;
    wire q;
    flipflop_D dff(.d(d),.clk(clk),.q(q));
    initial begin
    d=1'b0;clk=1'b1;
    #100
    d=1'b0;clk=1'b0;
    #100
    d=1'b1;clk=1'b1;
    #100
    d=1'b1;clk=1'b0;
    end
    
endmodule
