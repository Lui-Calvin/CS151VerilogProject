`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 05:16:48 PM
// Design Name: 
// Module Name: mov
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


module mov32(
    input [31:0] a,
    output reg [31:0] out
    );
    
    int i;
    always @ (a)
    begin
    
        for (i = 0; i < 32; i = i + 1)
        begin
            out[i] = a[i];
        end
        
    end
endmodule