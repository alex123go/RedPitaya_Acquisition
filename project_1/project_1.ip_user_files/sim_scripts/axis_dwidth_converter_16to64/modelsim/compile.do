vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_register_slice_v1_1_19
vlib modelsim_lib/msim/axis_dwidth_converter_v1_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_19 modelsim_lib/msim/axis_register_slice_v1_1_19
vmap axis_dwidth_converter_v1_1_18 modelsim_lib/msim/axis_dwidth_converter_v1_1_18

vlog -work xilinx_vip -64 -incr -sv -L xilinx_vip "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Programs/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L xilinx_vip "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Programs/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_19 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_18 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+D:/Programs/Vivado/2019.1/data/xilinx_vip/include" \
"../../../ip/axis_dwidth_converter_16to64/sim/axis_dwidth_converter_16to64.v" \

vlog -work xil_defaultlib \
"glbl.v"

