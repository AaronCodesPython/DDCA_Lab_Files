`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 04:48:22 PM
// Design Name: 
// Module Name: clk_div
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


module clk_dimmer #(parameter [1:0] FREQ = 2'b00) ( input clk , output clk_en);
reg [FREQ:0] clk_count;
always @ (posedge clk)
// posedge defines a rising edge (transition from 0 to 1)
begin
 //if (rst)
 //clk_count <= 0;
 //else
 clk_count <= clk_count + 1;
end
assign clk_en = &clk_count;
endmodule
