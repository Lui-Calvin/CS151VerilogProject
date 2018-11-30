`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 05:36:46 PM
// Design Name: 
// Module Name: mux2x1
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


module mux2x1(
    input [31:0] a,
    input [31:0] b,
    input selector,
    output reg [31:0] out
    );
always @*
begin
    if(!selector)
    begin
        out = a;
    end
    else
    begin
        out = b;
    end
end
endmodule
