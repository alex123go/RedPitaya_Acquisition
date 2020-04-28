`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2020 01:28:28 PM
// Design Name: 
// Module Name: ADCs_wrapper
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


module ADCs_wrapper(
    input  wire             adc_clk,
    input  wire   [15:2]    adc_dat_a_i,
    input  wire   [15:2]    adc_dat_b_i,
    output signed [15:0]    adc_a,
    output signed [15:0]    adc_b,
    output wire             adc_cdcs_o
    );

reg [14-1:0] adc_dat_a, adc_dat_b;

always @(posedge adc_clk)
begin
  adc_dat_a <= adc_dat_a_i[16-1:2];
  adc_dat_b <= adc_dat_b_i[16-1:2];
end

// transform into 2's complement (negative slope)
assign adc_a = {adc_dat_a[14-1], ~adc_dat_a[14-2:0], 2'b0};
assign adc_b = {adc_dat_b[14-1], ~adc_dat_b[14-2:0], 2'b0};

assign adc_cdcs_o = 1'b1;

endmodule

