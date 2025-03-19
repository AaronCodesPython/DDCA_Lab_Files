`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2025 05:21:20 PM
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(input[3:0] a, input[3:0] b, output[4:0] s);
    wire co0,co1,co2;
    FullAdder f0(a[0],b[0],0,s[0],co0);
    FullAdder f1(a[1],b[1],co0,s[1],co1);
    FullAdder f2(a[2],b[2],co1,s[2],co2);
    FullAdder f3(a[3],b[3],co2,s[3],s[4]);

endmodule
