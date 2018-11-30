`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 06:31:36 PM
// Design Name: 
// Module Name: instructionMem
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


module instructionMem(
    input [5:0] addr,
    output reg[31:0] instr
    );
reg[31:0] mem[63:0];
int i;
initial
begin
    for(i = 0;i < 64;i = i + 1)
    begin
        mem[i] = 32'h00000000;
    end
mem[0] = 32'h80088014;
mem[1] = 32'h8010800F;
mem[2] = 32'h80188004;
mem[4] = 32'h04208200;
mem[5] = 32'h80290014;
mem[6] = 32'h02310200;
mem[7] = 32'h8A42AAAA;
end
always @*
begin
    instr = mem[addr];
end
endmodule
