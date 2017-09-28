`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:The University of Texas at San Antonio
// Engineer: Harshitha Yendapally
// Create Date: 09/10/2017 05:52:10 PM
// Module Name: Mux_8to1_tb
// Project Name: MultiplexerDesign Testbench
// Target Devices: IC74151
// Tool Versions: Vivado 2016.4
// Description: Multiplexer are usually used to increase the amount of data to be sent 
// over network. This design is a testbench for multiplexer in Mux_8to1.v .
// Dependencies:None  
// Revision:1
// Additional Comments: 
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux_8to1_tb();
//inputs to the test module.
reg [7:0]D;reg [2:0]S;reg Vcc,E,GND;
//outputs from the test module.
wire Y,Y_bar;
//Mux_8to1.v module is invoked from testbench. 
Mux_8to1 mux(
.D(D),.S(S),.Vcc(Vcc),.E(E),.GND(GND),
.Y(Y),.Y_bar(Y_bar)
);
//Assign test variables
initial begin
    Vcc=1'b1;E=1'b1;GND=1'b0;
    D=8'b11110000;S=3'b110;
    #100
    D=8'b11001110;S=3'b000;
    #100
    D=8'b11001111;S=3'b000;
    #100
    Vcc=1'b0;E=1'b1;GND=1'b0;//power off.
    D=8'b0001110;S=3'b111;
    #100
    Vcc=1'b1;E=1'b0;GND=1'b0;//disable IC.
    D=8'b0001110;S=3'b111;
    #100
    Vcc=1'b1;E=1'b1;GND=1'b0;//Turn on IC.
    D=8'b0001110;S=3'b111;
end
endmodule
