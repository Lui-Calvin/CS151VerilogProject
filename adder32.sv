`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 01:24:49 AM
// Design Name: 
// Module Name: adder32
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


module adder32(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output reg [31:0] out,
    output reg cout
    );
    
    always @ (a or b or cin)
    begin
    int i;
    cout = cin;
 
    for (i=0; i < 32; i = i + 1)
    begin
        {cout, out[i]} = a[i] + b[i] + cout;
    end
    
    end
endmodule
