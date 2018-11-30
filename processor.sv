`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2018 01:58:12 PM
// Design Name: 
// Module Name: processor
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


module processor(
    );
    reg clk;
    reg [5:0]progCount;
    reg [31:0] instr;
    reg[3:0] ALUopsel;
    reg MUXsel;
    reg RegWrite;
    reg [5:0] rs;
    reg [5:0] rt;
    reg [5:0] rd;
    reg[14:0] imm;
    reg[31:0] extImm;
    reg[31:0] RD1;
    reg[31:0] RD2;
    reg[31:0] muxOut;
    reg[31:0] aluOut;
    clock cl(clk);
    PC pc(clk,progCount,progCount);
    instructionMem im(progCount,instr);
    controller cont(instr,ALUopsel,MUXsel,RegWrite,rs,rd,rt,imm);
    signEx ext(imm,extImm);
    regFile rf(rs,rt,rd,aluOut,clk,RegWrite,RD1,RD2);
    mux2x1 m21(RD2,extImm,MUXsel, muxOut);
    alu32 alu(RD1,muxOut,ALUopsel,aluOut);
always @(posedge clk)
begin
    $display ("prog#%D      result:%H",progCount,aluOut);
    //$display("%b",instr);
end
endmodule