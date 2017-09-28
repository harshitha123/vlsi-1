`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:The University of Texas at San Antonio
// Engineer: Harshitha Yendapally
// Create Date: 09/10/2017 05:52:10 PM
// Abstraction Level: Behavioural/Algorithmic 
// Module Name: Mux_8to1
// Project Name: MultiplexerDesign
// Target Devices: IC74151
// Tool Versions: Vivado 2016.4
// Description: Multiplexer are usually used to increase the amount of data to be sent 
// over network. This design acts as dataselector for 8 input signals.
// Dependencies:None  
// Revision:1
// Additional Comments: 
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux_8to1(
    //Multiplexer IC74151 input and output declaration.
    input [7:0]D,[2:0]S,Vcc,E,GND,
    output reg Y,Y_bar
);
//Block is triggered at change of Powersupply,enable,ground,
//select lines and input respectively.
always @(Vcc or E or GND or S or D)
begin
    //Power on the design.
    if(Vcc==1 && E==1 && GND==0)
    begin
        //Complimentary multiplexer output.
        Y_bar=!Y;
        //Multiplexer output derived based on input and select lines.
        case(S)
            3'b000:Y=D[0];
            3'b001:Y=D[1];
            3'b010:Y=D[2];
            3'b011:Y=D[3];
            3'b100:Y=D[4];
            3'b101:Y=D[5];
            3'b110:Y=D[6];
            3'b111:Y=D[7];
        endcase
    end
end
endmodule
