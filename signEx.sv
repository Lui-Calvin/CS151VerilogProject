`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 05:58:20 PM
// Design Name: 
// Module Name: signEx
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


module signEx(
input [14:0]in,
output reg [31:0]out
    );
always @in
begin
    int i;
    for(i = 0; i < 17;i = i + 1)
    begin
        out[31-i] = (in[14]?1:0);
    end
    for(i = 0; i < 15; i = i + 1)
    begin
        out[i] = in[i];
    end
end
endmodule
