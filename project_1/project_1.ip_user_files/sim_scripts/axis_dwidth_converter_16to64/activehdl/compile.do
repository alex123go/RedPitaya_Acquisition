vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_register_slice_v1_1_19
vlib activehdl/axis_dwidth_converter_v1_1_18

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_19 activehdl/axis_register_slice_v1_1_19
vmap axis_dwidth_converter_v1_1_18 activehdl/axis_dwidth_converter_v1_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_19  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_18  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ip/axis_dwidth_converter_16to64/sim/axis_dwidth_converter_16to64.v" \

vlog -work xil_defaultlib \
"glbl.v"

