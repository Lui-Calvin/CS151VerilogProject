`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 05:16:48 PM
// Design Name: 
// Module Name: not
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


module not32(
    input [31:0] a,
    output reg [31:0] out
    );
    
    always @ (a)
    begin
    int i;
    
    for (i = 0; i < 32; i = i + 1)
    begin
        if (a[i] == 0)
        begin
            out[i] = 1;
        end
        else
        begin
            out[i] = 0;
        end
    end
    end
endmodule
