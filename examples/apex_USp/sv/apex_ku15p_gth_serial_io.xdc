# This code was automatically generated by FPGA MGT Builder
# Timestamp: 2020-12-15 13:31:15.961
# User: madorsky
# FPGA MGT builder homepage: <link>

set_property LOC  R12 [get_ports refclk_p[ 0]]; # name: 232_0 160.3144 MHz
set_property LOC  P10 [get_ports refclk_p[ 1]]; # name: 232_1 322.265625 MHz
set_property LOC AA12 [get_ports refclk_p[ 2]]; # name: 229_0 160.3144 MHz
set_property LOC  Y10 [get_ports refclk_p[ 3]]; # name: 229_1 322.265625 MHz
set_property LOC AG12 [get_ports refclk_p[ 4]]; # name: 226_0 160.3144 MHz
set_property LOC AF10 [get_ports refclk_p[ 5]]; # name: 226_1 322.265625 MHz
create_clock -period 6.238 -name refclk_p0  [get_ports refclk_p[ 0]];
create_clock -period 3.103 -name refclk_p1  [get_ports refclk_p[ 1]];
create_clock -period 6.238 -name refclk_p2  [get_ports refclk_p[ 2]];
create_clock -period 3.103 -name refclk_p3  [get_ports refclk_p[ 3]];
create_clock -period 6.238 -name refclk_p4  [get_ports refclk_p[ 4]];
create_clock -period 3.103 -name refclk_p5  [get_ports refclk_p[ 5]];
set_clock_groups -group [get_clocks -include_generated_clocks refclk_p0 ] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks refclk_p1 ] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks refclk_p2 ] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks refclk_p3 ] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks refclk_p4 ] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks refclk_p5 ] -asynchronous
set_property LOC GTHE4_CHANNEL_X0Y32 [get_cells */quad_loop[ 0].GTHE4_QUAD_inst/mgt_loop[ 0].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
set_property LOC GTHE4_CHANNEL_X0Y33 [get_cells */quad_loop[ 0].GTHE4_QUAD_inst/mgt_loop[ 1].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
set_property LOC GTHE4_CHANNEL_X0Y34 [get_cells */quad_loop[ 0].GTHE4_QUAD_inst/mgt_loop[ 2].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
set_property LOC GTHE4_CHANNEL_X0Y35 [get_cells */quad_loop[ 0].GTHE4_QUAD_inst/mgt_loop[ 3].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
set_property LOC GTHE4_CHANNEL_X0Y36 [get_cells */quad_loop[ 1].GTHE4_QUAD_inst/mgt_loop[ 0].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
set_property LOC GTHE4_CHANNEL_X0Y37 [get_cells */quad_loop[ 1].GTHE4_QUAD_inst/mgt_loop[ 1].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
set_property LOC GTHE4_CHANNEL_X0Y38 [get_cells */quad_loop[ 1].GTHE4_QUAD_inst/mgt_loop[ 2].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
set_property LOC GTHE4_CHANNEL_X0Y39 [get_cells */quad_loop[ 1].GTHE4_QUAD_inst/mgt_loop[ 3].GTHE4_CHANNEL_tux_inst/GTHE4_CHANNEL_inst];
create_clock -period 3.100 -name rxclk0_32 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[0]*GTHE4_CHANNEL_inst*}]]; # tcds_rx0
create_clock -period 3.100 -name txclk0_32 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[0]*GTHE4_CHANNEL_inst*}]]; # tcds_tx0
create_clock -period 3.100 -name rxclk0_33 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[1]*GTHE4_CHANNEL_inst*}]]; # tcds_rx1
create_clock -period 3.100 -name txclk0_33 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[1]*GTHE4_CHANNEL_inst*}]]; # tcds_tx1
create_clock -period 3.100 -name rxclk0_34 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[2]*GTHE4_CHANNEL_inst*}]]; # tcds_rx2
create_clock -period 3.100 -name txclk0_34 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[2]*GTHE4_CHANNEL_inst*}]]; # tcds_tx2
create_clock -period 3.100 -name rxclk0_35 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[3]*GTHE4_CHANNEL_inst*}]]; # tcds_rx3
create_clock -period 3.100 -name txclk0_35 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[0]*mgt_loop[3]*GTHE4_CHANNEL_inst*}]]; # tcds_tx3
create_clock -period 3.100 -name rxclk0_36 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[0]*GTHE4_CHANNEL_inst*}]]; # tcds_rx4
create_clock -period 3.100 -name txclk0_36 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[0]*GTHE4_CHANNEL_inst*}]]; # tcds_tx4
create_clock -period 3.100 -name rxclk0_37 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[1]*GTHE4_CHANNEL_inst*}]]; # tcds_rx5
create_clock -period 3.100 -name txclk0_37 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[1]*GTHE4_CHANNEL_inst*}]]; # tcds_tx5
create_clock -period 3.100 -name rxclk0_38 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[2]*GTHE4_CHANNEL_inst*}]]; # tcds_rx6
create_clock -period 3.100 -name txclk0_38 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[2]*GTHE4_CHANNEL_inst*}]]; # tcds_tx6
create_clock -period 3.100 -name rxclk0_39 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[3]*GTHE4_CHANNEL_inst*}]]; # tcds_rx7
create_clock -period 3.100 -name txclk0_39 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *quad_loop[1]*mgt_loop[3]*GTHE4_CHANNEL_inst*}]]; # tcds_tx7
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_32] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_32] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_33] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_33] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_34] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_34] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_35] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_35] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_36] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_36] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_37] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_37] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_38] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_38] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks rxclk0_39] -asynchronous
set_clock_groups -group [get_clocks -include_generated_clocks txclk0_39] -asynchronous
