set_property -dict { PACKAGE_PIN "H4"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { CLK1 }]     ;                          Sch = CLK1   # IO_L12P_T1_MRCC_35
create_clock -name CLK1 -period 10.000 [get_ports CLK1]

set_property -dict { PACKAGE_PIN "P20"  IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[0] }];                     # IO_0_14                       Sch = SW0
set_property -dict { PACKAGE_PIN "P19"  IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[1] }];                     # IO_L5P_T0_D06_14              Sch = SW1
set_property -dict { PACKAGE_PIN "P17"  IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[2] }];                     # IO_L21N_T3_DQS_A06_D22_14     Sch = SW2
set_property -dict { PACKAGE_PIN "N17"  IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw_in[3] }];                     # IO_L21P_T3_DQS_14             Sch = SW3

set_property -dict { PACKAGE_PIN "K17"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[0] }];                      # IO_L21P_T3_DQS_15             Sch = LED0 
set_property -dict { PACKAGE_PIN "J17"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[1] }];                      # IO_L21N_T3_DQS_A18_15         Sch = LED1
set_property -dict { PACKAGE_PIN "L14"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[2] }];                      # IO_L22P_T3_A17_15             Sch = LED2
set_property -dict { PACKAGE_PIN "L15"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[3] }];                      # IO_L22N_T3_A16_15             Sch = LED3
set_property -dict { PACKAGE_PIN "L16"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[4] }];                      # IO_L23P_T3_FOE_B_15           Sch = LED4
set_property -dict { PACKAGE_PIN "K16"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[5] }];                      # IO_L23N_T3_FWE_B_15           Sch = LED5
set_property -dict { PACKAGE_PIN "M15"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[6] }];                      # IO_L24P_T3_RS1_15             Sch = LED6
set_property -dict { PACKAGE_PIN "M16"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[7] }];                      # IO_L24N_T3_RS0_15             Sch = LED7

set_property -dict { PACKAGE_PIN "B21"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[0] }];                   # IO_L21P_T3_DQS_16             Sch = DP0
set_property -dict { PACKAGE_PIN "A21"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[1] }];                   # IO_L21N_T3_DQS_16             Sch = DP1
set_property -dict { PACKAGE_PIN "E22"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[2] }];                   # IO_L22P_T3_16                 Sch = DP2
set_property -dict { PACKAGE_PIN "D22"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[3] }];                   # IO_L22N_T3_16                 Sch = DP3
set_property -dict { PACKAGE_PIN "E21"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[4] }];                   # IO_L23P_T3_16                 Sch = DP4
set_property -dict { PACKAGE_PIN "D21"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[5] }];                   # IO_L23N_T3_16                 Sch = DP5
set_property -dict { PACKAGE_PIN "G21"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[6] }];                   # IO_L24P_T3_16                 Sch = DP6
set_property -dict { PACKAGE_PIN "G22"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { dip_sw[7] }];                   # IO_L24N_T3_16                 Sch = DP7

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
