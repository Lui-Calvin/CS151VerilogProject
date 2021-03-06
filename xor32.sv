`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 05:16:48 PM
// Design Name: 
// Module Name: xor
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


module xor32(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] out
    );
    
    always @ (a or b)
    begin
    int i;
    
    for (i = 0; i < 32; i = i + 1)
    begin
        if (a[i] == b[i])
        begin
            out[i] = 0;
        end
        else
        begin
            out[i] = 1;
        end
    end
    
    end
endmodule