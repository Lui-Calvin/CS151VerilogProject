`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 06:39:52 PM
// Design Name: 
// Module Name: sll32
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


module sll32(
    input [31:0] a,
    input [4:0] sh,
    output reg [31:0] out,
    output reg cout
    );
    
    int i;
    
    always @(a or sh)
    begin
    
    for (i = 0; i < 32; i = i + 1)
    begin
        if (i < sh)
        begin
            out[i] = 0;
        end
        else
        begin
            out[i] = a[i-sh];
        end
    end
    
    cout = 0;
    for (i = 32-sh; i < 32; i = i + 1)
    begin
        if (a[i] == 1)
        begin
            cout = 1;
        end
    end
    
    end
endmodule
