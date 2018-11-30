`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 06:16:29 PM
// Design Name: 
// Module Name: controller
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


module controller(
input [31:0]instr,
output reg [3:0]ALUopsel,
output reg muxSel,
output reg WE1,
output reg [5:0]rs,
output reg [5:0]rd,
output reg [5:0]rt,
output reg [14:0] imm
    );
initial 
    begin
    muxSel = 0;
    WE1 = 1;
    end
always @(instr)
begin
    muxSel = instr[31:31];
    rs = instr[30:25];
    rd = instr[24:19];
    ALUopsel = instr[18:15];
    rt = instr[14:9];
    imm = instr[14:0];
    if(ALUopsel != 4'b0000)
    begin
        WE1 = 1;
    end
    else
    begin
        WE1 = 0;
    end
end
endmodule
