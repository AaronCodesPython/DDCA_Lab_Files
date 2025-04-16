`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2025 01:37:57 PM
// Design Name: 
// Module Name: Adder4Bit
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


module Adder4Bit(input [3:0] a, input [3:0] b, input carryIn, output [3:0] c, output carryOut);
    wire o1, o2, o3;
    Adder1Bit add1(a[0], b[0], carryIn, c[0], o1);
    Adder1Bit add2(a[1], b[1], o1, c[1], o2);
    Adder1Bit add3(a[2], b[2], o2, c[2], o3);
    Adder1Bit add4(a[3], b[3], o3, c[3], carryOut);
endmodule

