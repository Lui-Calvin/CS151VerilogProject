`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 04:26:12 PM
// Design Name: 
// Module Name: sub32
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

module sub32(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] out,
    output reg cout
    );
    
    int notb;
    
    not32 n32(b, notb);
    adder32 a32(a, notb, 1, out, cout);

    
endmodule
