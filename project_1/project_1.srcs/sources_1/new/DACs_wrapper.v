`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2020 01:28:28 PM
// Design Name: 
// Module Name: DACs_wrapper
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


module DACs_wrapper(
    input  wire             clk,
    input  wire             dac_clk, // 250 MHz -90deg
    input  wire             pll_locked,
    input  wire [14-1:0]    dac_a,
    input  wire             dac_a_tvalid,
    input  wire [14-1:0]    dac_b,
    input  wire             dac_b_tvalid,
    output wire [14-1:0]    dac_dat_o,
    output wire             dac_wrt_o,
    output wire             dac_sel_o,
    output wire             dac_clk_o,
    output wire             dac_rst_o
    );
    
    
    // output registers + signed to unsigned (also to negative slope)
    reg [14-1:0] dac_dat_a, dac_dat_b;
    always @(posedge clk)
    begin
      dac_dat_a <= dac_a_tvalid ? {dac_a[14-1], ~dac_a[14-2:0]} : {1'b0, 13'b1};
      dac_dat_b <= dac_b_tvalid ? {dac_b[14-1], ~dac_b[14-2:0]} : {1'b0, 13'b1};
    end
    
    reg dac_rst;
    always @(posedge clk)
    begin
        dac_rst <= ~pll_locked;
    end
    
    ODDR ODDR_clk              (.Q(dac_clk_o), .D1( 1'b0  ), .D2( 1'b1  ), .C(dac_clk), .CE(1'b1), .R( 1'b0  ), .S(1'b0));
    ODDR ODDR_wrt              (.Q(dac_wrt_o), .D1( 1'b0  ), .D2( 1'b1  ), .C(dac_clk), .CE(1'b1), .R( 1'b0  ), .S(1'b0));
    ODDR ODDR_sel              (.Q(dac_sel_o), .D1( 1'b0  ), .D2( 1'b1  ), .C(  clk  ), .CE(1'b1), .R(dac_rst), .S(1'b0));
    ODDR ODDR_rst              (.Q(dac_rst_o), .D1(dac_rst), .D2(dac_rst), .C(  clk  ), .CE(1'b1), .R( 1'b0  ), .S(1'b0));  
    ODDR ODDR_dac_dat [14-1:0] (.Q(dac_dat_o), .D1(dac_dat_a), .D2(dac_dat_b), .C(clk), .CE(1'b1), .R(dac_rst), .S(1'b0));

endmodule
