`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2025 03:35:10 PM
// Design Name: 
// Module Name: Adder32Bit
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


module Adder32Bit(input [31:0] a, [31:0] b, output [31:0] c, output carryOut);
wire o1, o2, o3, o4, o5, o6, o7;
Adder4Bit add1(a[3:0], b[3:0], 0, c[3:0], o1);
Adder4Bit add2(a[7:4], b[7:4], o1, c[7:4], o2);
Adder4Bit add3(a[11:8], b[11:8], o2, c[11:8], o3);
Adder4Bit add4(a[15:12], b[15:12], o3, c[15:12], o4);
Adder4Bit add5(a[19:16], b[19:16], o4, c[19:16], o5);
Adder4Bit add6(a[23:20], b[23:20], o5, c[23:20], o6);
Adder4Bit add7(a[27:24], b[27:24], o6, c[27:24], o7);
Adder4Bit add8(a[31:28], b[31:28], o7, c[31:28], carryOut);

endmodule
