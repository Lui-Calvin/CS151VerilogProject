`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 05:24:51 PM
// Design Name: 
// Module Name: regFile
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


module regFile(
    input [5:0]RA1,
    input [5:0]RA2,
    input [5:0]WA,
    input [31:0]WD,
    input clk,
    input WE1,
    output reg [31:0]RD1,
    output reg [31:0]RD2
    );
    reg[31:0] mem[63:0];
    int i;
    initial
    begin
        for(i = 0; i < 64;i = i + 1)
        begin
            mem[i] = 32'h00000000;
        end  
    end
    always @(posedge clk && WE1)
    begin
           mem[WA] = WD;
    end
    always @(RA1 or RA2)
    begin
        RD1 = mem[RA1];
        RD2 = mem[RA2];
    end
    
endmodule
