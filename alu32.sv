`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 12:48:04 PM
// Design Name: 
// Module Name: alu32
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


module alu32(
    input [31:0] a,
    input [31:0] b,
    input [3:0] sel,
    output reg [31:0] out,
    output reg oflow,
    output reg eq,
    output reg carry
    );
    
    module overflow(
        input [31:0] a,
        input [31:0] b,
        input [31:0] c,
        output reg out
        );
        
        always @(a or b)
        if (a[31] == b[31] && a[31] != c[31]) begin
            out = 1;
        end
        else begin
            out = 0;
        end
    endmodule
    
    int oflow0, oflow1, carry0, carry1, carry6, out0, out1, out2, out3, 
    out4, out5, out6, out7;
    adder32 add32(a, b, 0, out0, carry0);
    sub32 sub32(a, b, out1, carry1);
    and32 and32(a, b, out2);
    or32 or32(a, b, out3);
    not32 not32(a, out4);
    xor32 xor32(a, b, out5);
    sll32 sll32(a, b, out6, carry6);
    mov32 mov32(a, out7);
    
    overflow overflow0(a, b, out0, oflow0);
    int notb;
    not32 not32b(b, notb);
    overflow overflow1(a, notb, out1, oflow1);
    
    always @(a or b or sel)
    begin

    case(sel)
        4'b0001:
            begin
            $display("addition");
            out = out0;
            oflow = oflow0;
            carry = carry0;
            end    
        4'b0010: 
            begin
            $display("%b",out1);
            //eq = out1 ? 0 : 1;
            out = out1;
            oflow = oflow1;
            carry = carry1;
            end
        4'b0101:
            begin
                 out = out2;
                 $display("AND");
            end
        4'b0110:
            begin
                out = out3;
                $display("or");
            end
        4'b0111:
            begin
                 out = out4;
            end
        4'b1000: 
            begin
            $display("xor");
            out = out5;
            eq = out5 ? 0 : 1;
            end
        4'b1001:
            begin
            out = out6;
            carry = carry6;
            end
        4'b1011: out = out7;
        default:;
    endcase
    $display("%b",out1);
    end
endmodule
