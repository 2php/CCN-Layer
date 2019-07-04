# -----------------------------------------------------------------------
# CLOCKS
# -----------------------------------------------------------------------
create_clock -name {clk} -period 5.000 -waveform { 0.000 2.500 } [get_ports {clk}]
create_clock -name {memclk} -period 5.000 -waveform { 0.000 2.500 } [get_ports {memclk}]

# -----------------------------------------------------------------------
# False Path
# -----------------------------------------------------------------------
set_false_path -from [get_clocks clk] -to [get_clocks memclk]
set_false_path -from [get_clocks memclk] -to [all_outputs]

# -----------------------------------------------------------------------
# Constrained Paths
# -----------------------------------------------------------------------
set_input_delay -clock clk -max 3 [all_inputs]
set_input_delay -clock clk -min 2 [all_inputs]

