`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2025 04:47:25 PM
// Design Name: 
// Module Name: Adder8Bit
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


module Adder8Bit(input [7:0] a, [7:0] b, output s[7:0], output carryout);
wire carry4;
Adder4Bit(a[3:0], b[3:0], s[3:0], carry4);
Adder4Bit(a[7:4], b[7:4], s[7:4], carryout);
endmodule
