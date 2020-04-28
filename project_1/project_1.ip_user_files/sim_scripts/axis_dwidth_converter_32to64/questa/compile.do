vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axis_infrastructure_v1_1_0
vlib questa_lib/msim/axis_register_slice_v1_1_19
vlib questa_lib/msim/axis_dwidth_converter_v1_1_18

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axis_infrastructure_v1_1_0 questa_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_19 questa_lib/msim/axis_register_slice_v1_1_19
vmap axis_dwidth_converter_v1_1_18 questa_lib/msim/axis_dwidth_converter_v1_1_18

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_5 -L processing_system7_vip_v1_0_7 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_19 -64 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_18 -64 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ip/axis_dwidth_converter_32to64/sim/axis_dwidth_converter_32to64.v" \

vlog -work xil_defaultlib \
"glbl.v"

