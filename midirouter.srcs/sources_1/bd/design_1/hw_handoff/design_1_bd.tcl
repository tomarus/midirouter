
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a15tcpg236-1
   set_property BOARD_PART digilentinc.com:cmod_a7-15t:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set RCK_0 [ create_bd_port -dir O RCK_0 ]
  set SCK_0 [ create_bd_port -dir O SCK_0 ]
  set SER_0 [ create_bd_port -dir O SER_0 ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set rx_0 [ create_bd_port -dir I rx_0 ]
  set rx_1 [ create_bd_port -dir I rx_1 ]
  set rx_2 [ create_bd_port -dir I rx_2 ]
  set rx_3 [ create_bd_port -dir I rx_3 ]
  set rx_4 [ create_bd_port -dir I rx_4 ]
  set rx_5 [ create_bd_port -dir I rx_5 ]
  set rx_6 [ create_bd_port -dir I rx_6 ]
  set rx_7 [ create_bd_port -dir I rx_7 ]
  set rx_8 [ create_bd_port -dir I rx_8 ]
  set rx_9 [ create_bd_port -dir I rx_9 ]
  set rx_10 [ create_bd_port -dir I rx_10 ]
  set rx_11 [ create_bd_port -dir I rx_11 ]
  set rx_12 [ create_bd_port -dir I rx_12 ]
  set rx_13 [ create_bd_port -dir I rx_13 ]
  set rx_14 [ create_bd_port -dir I rx_14 ]
  set rx_15 [ create_bd_port -dir I rx_15 ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {12000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock
  set tx_0 [ create_bd_port -dir O tx_0 ]
  set tx_1 [ create_bd_port -dir O tx_1 ]
  set tx_2 [ create_bd_port -dir O tx_2 ]
  set tx_3 [ create_bd_port -dir O tx_3 ]
  set tx_4 [ create_bd_port -dir O tx_4 ]
  set tx_5 [ create_bd_port -dir O tx_5 ]
  set tx_6 [ create_bd_port -dir O tx_6 ]
  set tx_7 [ create_bd_port -dir O tx_7 ]
  set tx_8 [ create_bd_port -dir O tx_8 ]
  set tx_9 [ create_bd_port -dir O tx_9 ]
  set tx_10 [ create_bd_port -dir O tx_10 ]
  set tx_11 [ create_bd_port -dir O tx_11 ]
  set tx_12 [ create_bd_port -dir O tx_12 ]
  set tx_13 [ create_bd_port -dir O tx_13 ]
  set tx_14 [ create_bd_port -dir O tx_14 ]
  set tx_15 [ create_bd_port -dir O tx_15 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: axi_uartlite_1, and set properties
  set axi_uartlite_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_1 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_1

  # Create instance: axi_uartlite_2, and set properties
  set axi_uartlite_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_2 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_2

  # Create instance: axi_uartlite_3, and set properties
  set axi_uartlite_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_3 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_3

  # Create instance: axi_uartlite_4, and set properties
  set axi_uartlite_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_4 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_4

  # Create instance: axi_uartlite_5, and set properties
  set axi_uartlite_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_5 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_5

  # Create instance: axi_uartlite_6, and set properties
  set axi_uartlite_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_6 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_6

  # Create instance: axi_uartlite_7, and set properties
  set axi_uartlite_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_7 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_7

  # Create instance: axi_uartlite_8, and set properties
  set axi_uartlite_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_8 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_8

  # Create instance: axi_uartlite_9, and set properties
  set axi_uartlite_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_9 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_9

  # Create instance: axi_uartlite_10, and set properties
  set axi_uartlite_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_10 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_10

  # Create instance: axi_uartlite_11, and set properties
  set axi_uartlite_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_11 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_11

  # Create instance: axi_uartlite_12, and set properties
  set axi_uartlite_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_12 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_12

  # Create instance: axi_uartlite_13, and set properties
  set axi_uartlite_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_13 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_13

  # Create instance: axi_uartlite_14, and set properties
  set axi_uartlite_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_14 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_14

  # Create instance: axi_uartlite_15, and set properties
  set axi_uartlite_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_15 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_15

  # Create instance: axi_uartlite_16, and set properties
  set axi_uartlite_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_16 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {31250} \
 ] $axi_uartlite_16

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {833.33} \
   CONFIG.CLKOUT1_JITTER {479.872} \
   CONFIG.CLKOUT1_PHASE_ERROR {668.310} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {62.500} \
   CONFIG.MMCM_CLKIN1_PERIOD {83.333} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {7.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.PRIM_IN_FREQ {12.000} \
   CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_1

  # Create instance: led_shift_594_driver_0, and set properties
  set led_shift_594_driver_0 [ create_bd_cell -type ip -vlnv user.org:user:led_shift_594_driver:1.0 led_shift_594_driver_0 ]
  set_property -dict [ list \
   CONFIG.ANIMATION_CLOCK_WIDTH {23} \
   CONFIG.ANIMATION_IDLE_WIDTH {31} \
   CONFIG.LED_CLOCK_WIDTH {19} \
   CONFIG.LED_DELAY_WIDTH {2} \
   CONFIG.SHIFT_DELAY_WIDTH {11} \
 ] $led_shift_594_driver_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $mdm_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {19} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: rst_clk_wiz_1_100M, and set properties
  set rst_clk_wiz_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_1_100M

  # Create interface connections
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins led_shift_594_driver_0/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins axi_uartlite_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins axi_uartlite_2/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins axi_uartlite_3/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins axi_uartlite_4/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_uartlite_5/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins axi_uartlite_6/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins axi_uartlite_7/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins axi_uartlite_8/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins axi_uartlite_9/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M12_AXI [get_bd_intf_pins axi_uartlite_10/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M13_AXI [get_bd_intf_pins axi_uartlite_11/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M13_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M14_AXI [get_bd_intf_pins axi_uartlite_12/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M15_AXI [get_bd_intf_pins axi_uartlite_13/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M15_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M16_AXI [get_bd_intf_pins axi_uartlite_14/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M16_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M17_AXI [get_bd_intf_pins axi_uartlite_15/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M17_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M18_AXI [get_bd_intf_pins axi_uartlite_16/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M18_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_mdm_axi [get_bd_intf_pins mdm_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]

  # Create port connections
  connect_bd_net -net axi_uartlite_10_tx [get_bd_ports tx_9] [get_bd_pins axi_uartlite_10/tx]
  connect_bd_net -net axi_uartlite_11_tx [get_bd_ports tx_10] [get_bd_pins axi_uartlite_11/tx]
  connect_bd_net -net axi_uartlite_12_tx [get_bd_ports tx_11] [get_bd_pins axi_uartlite_12/tx]
  connect_bd_net -net axi_uartlite_13_tx [get_bd_ports tx_12] [get_bd_pins axi_uartlite_13/tx]
  connect_bd_net -net axi_uartlite_14_tx [get_bd_ports tx_13] [get_bd_pins axi_uartlite_14/tx]
  connect_bd_net -net axi_uartlite_15_tx [get_bd_ports tx_14] [get_bd_pins axi_uartlite_15/tx]
  connect_bd_net -net axi_uartlite_16_tx [get_bd_ports tx_15] [get_bd_pins axi_uartlite_16/tx]
  connect_bd_net -net axi_uartlite_1_tx [get_bd_ports tx_0] [get_bd_pins axi_uartlite_1/tx]
  connect_bd_net -net axi_uartlite_2_tx [get_bd_ports tx_1] [get_bd_pins axi_uartlite_2/tx]
  connect_bd_net -net axi_uartlite_3_tx [get_bd_ports tx_2] [get_bd_pins axi_uartlite_3/tx]
  connect_bd_net -net axi_uartlite_4_tx [get_bd_ports tx_3] [get_bd_pins axi_uartlite_4/tx]
  connect_bd_net -net axi_uartlite_5_tx [get_bd_ports tx_4] [get_bd_pins axi_uartlite_5/tx]
  connect_bd_net -net axi_uartlite_6_tx [get_bd_ports tx_5] [get_bd_pins axi_uartlite_6/tx]
  connect_bd_net -net axi_uartlite_7_tx [get_bd_ports tx_6] [get_bd_pins axi_uartlite_7/tx]
  connect_bd_net -net axi_uartlite_8_tx [get_bd_ports tx_7] [get_bd_pins axi_uartlite_8/tx]
  connect_bd_net -net axi_uartlite_9_tx [get_bd_ports tx_8] [get_bd_pins axi_uartlite_9/tx]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins rst_clk_wiz_1_100M/dcm_locked]
  connect_bd_net -net led_shift_594_driver_0_RCK [get_bd_ports RCK_0] [get_bd_pins led_shift_594_driver_0/RCK]
  connect_bd_net -net led_shift_594_driver_0_SCK [get_bd_ports SCK_0] [get_bd_pins led_shift_594_driver_0/SCK]
  connect_bd_net -net led_shift_594_driver_0_SER [get_bd_ports SER_0] [get_bd_pins led_shift_594_driver_0/SER]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins axi_uartlite_1/s_axi_aclk] [get_bd_pins axi_uartlite_10/s_axi_aclk] [get_bd_pins axi_uartlite_11/s_axi_aclk] [get_bd_pins axi_uartlite_12/s_axi_aclk] [get_bd_pins axi_uartlite_13/s_axi_aclk] [get_bd_pins axi_uartlite_14/s_axi_aclk] [get_bd_pins axi_uartlite_15/s_axi_aclk] [get_bd_pins axi_uartlite_16/s_axi_aclk] [get_bd_pins axi_uartlite_2/s_axi_aclk] [get_bd_pins axi_uartlite_3/s_axi_aclk] [get_bd_pins axi_uartlite_4/s_axi_aclk] [get_bd_pins axi_uartlite_5/s_axi_aclk] [get_bd_pins axi_uartlite_6/s_axi_aclk] [get_bd_pins axi_uartlite_7/s_axi_aclk] [get_bd_pins axi_uartlite_8/s_axi_aclk] [get_bd_pins axi_uartlite_9/s_axi_aclk] [get_bd_pins clk_wiz_1/clk_out1] [get_bd_pins led_shift_594_driver_0/s00_axi_aclk] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/M11_ACLK] [get_bd_pins microblaze_0_axi_periph/M12_ACLK] [get_bd_pins microblaze_0_axi_periph/M13_ACLK] [get_bd_pins microblaze_0_axi_periph/M14_ACLK] [get_bd_pins microblaze_0_axi_periph/M15_ACLK] [get_bd_pins microblaze_0_axi_periph/M16_ACLK] [get_bd_pins microblaze_0_axi_periph/M17_ACLK] [get_bd_pins microblaze_0_axi_periph/M18_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_1_100M/slowest_sync_clk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_1/reset] [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_1_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_1_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins axi_uartlite_1/s_axi_aresetn] [get_bd_pins axi_uartlite_10/s_axi_aresetn] [get_bd_pins axi_uartlite_11/s_axi_aresetn] [get_bd_pins axi_uartlite_12/s_axi_aresetn] [get_bd_pins axi_uartlite_13/s_axi_aresetn] [get_bd_pins axi_uartlite_14/s_axi_aresetn] [get_bd_pins axi_uartlite_15/s_axi_aresetn] [get_bd_pins axi_uartlite_16/s_axi_aresetn] [get_bd_pins axi_uartlite_2/s_axi_aresetn] [get_bd_pins axi_uartlite_3/s_axi_aresetn] [get_bd_pins axi_uartlite_4/s_axi_aresetn] [get_bd_pins axi_uartlite_5/s_axi_aresetn] [get_bd_pins axi_uartlite_6/s_axi_aresetn] [get_bd_pins axi_uartlite_7/s_axi_aresetn] [get_bd_pins axi_uartlite_8/s_axi_aresetn] [get_bd_pins axi_uartlite_9/s_axi_aresetn] [get_bd_pins led_shift_594_driver_0/s00_axi_aresetn] [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] [get_bd_pins microblaze_0_axi_periph/M12_ARESETN] [get_bd_pins microblaze_0_axi_periph/M13_ARESETN] [get_bd_pins microblaze_0_axi_periph/M14_ARESETN] [get_bd_pins microblaze_0_axi_periph/M15_ARESETN] [get_bd_pins microblaze_0_axi_periph/M16_ARESETN] [get_bd_pins microblaze_0_axi_periph/M17_ARESETN] [get_bd_pins microblaze_0_axi_periph/M18_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn]
  connect_bd_net -net rx_0_1 [get_bd_ports rx_0] [get_bd_pins axi_uartlite_1/rx]
  connect_bd_net -net rx_10_1 [get_bd_ports rx_10] [get_bd_pins axi_uartlite_11/rx]
  connect_bd_net -net rx_11_1 [get_bd_ports rx_11] [get_bd_pins axi_uartlite_12/rx]
  connect_bd_net -net rx_12_1 [get_bd_ports rx_12] [get_bd_pins axi_uartlite_13/rx]
  connect_bd_net -net rx_13_1 [get_bd_ports rx_13] [get_bd_pins axi_uartlite_14/rx]
  connect_bd_net -net rx_14_1 [get_bd_ports rx_14] [get_bd_pins axi_uartlite_15/rx]
  connect_bd_net -net rx_15_1 [get_bd_ports rx_15] [get_bd_pins axi_uartlite_16/rx]
  connect_bd_net -net rx_1_1 [get_bd_ports rx_1] [get_bd_pins axi_uartlite_2/rx]
  connect_bd_net -net rx_2_1 [get_bd_ports rx_2] [get_bd_pins axi_uartlite_3/rx]
  connect_bd_net -net rx_3_1 [get_bd_ports rx_3] [get_bd_pins axi_uartlite_4/rx]
  connect_bd_net -net rx_4_1 [get_bd_ports rx_4] [get_bd_pins axi_uartlite_5/rx]
  connect_bd_net -net rx_5_1 [get_bd_ports rx_5] [get_bd_pins axi_uartlite_6/rx]
  connect_bd_net -net rx_6_1 [get_bd_ports rx_6] [get_bd_pins axi_uartlite_7/rx]
  connect_bd_net -net rx_7_1 [get_bd_ports rx_7] [get_bd_pins axi_uartlite_8/rx]
  connect_bd_net -net rx_8_1 [get_bd_ports rx_8] [get_bd_pins axi_uartlite_9/rx]
  connect_bd_net -net rx_9_1 [get_bd_ports rx_9] [get_bd_pins axi_uartlite_10/rx]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_1/clk_in1]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x406A0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_10/S_AXI/Reg] SEG_axi_uartlite_10_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x406B0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_11/S_AXI/Reg] SEG_axi_uartlite_11_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x406C0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_12/S_AXI/Reg] SEG_axi_uartlite_12_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x406D0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_13/S_AXI/Reg] SEG_axi_uartlite_13_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x406E0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_14/S_AXI/Reg] SEG_axi_uartlite_14_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x406F0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_15/S_AXI/Reg] SEG_axi_uartlite_15_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40700000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_16/S_AXI/Reg] SEG_axi_uartlite_16_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40610000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_1/S_AXI/Reg] SEG_axi_uartlite_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40620000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_2/S_AXI/Reg] SEG_axi_uartlite_2_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40630000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_3/S_AXI/Reg] SEG_axi_uartlite_3_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40640000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_4/S_AXI/Reg] SEG_axi_uartlite_4_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40650000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_5/S_AXI/Reg] SEG_axi_uartlite_5_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40660000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_6/S_AXI/Reg] SEG_axi_uartlite_6_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40670000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_7/S_AXI/Reg] SEG_axi_uartlite_7_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40680000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_8/S_AXI/Reg] SEG_axi_uartlite_8_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40690000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_9/S_AXI/Reg] SEG_axi_uartlite_9_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs led_shift_594_driver_0/S00_AXI/S00_AXI_reg] SEG_led_shift_594_driver_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mdm_1/S_AXI/Reg] SEG_mdm_1_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


