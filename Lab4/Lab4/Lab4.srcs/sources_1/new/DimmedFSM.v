`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 06:43:28 PM
// Design Name: 
// Module Name: DimmedFSM
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


module DimmedFSM(input reg [2:0] state, input clk, output [5:0] dimmed);
clk_dimmer #(2'b00)fifty_percent(clk, dimmed);
clk_dimmer #(2'b01)tf_percent(clk, dimmed);
clk_dimmer #(2'b10)tpf_percent(clk, dimmed);



endmodule
