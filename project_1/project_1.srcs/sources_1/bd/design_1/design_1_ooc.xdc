################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name adc_clk_p_i -period 8 [get_ports adc_clk_p_i]
create_clock -name adc_clk_n_i -period 8 [get_ports adc_clk_n_i]

################################################################################