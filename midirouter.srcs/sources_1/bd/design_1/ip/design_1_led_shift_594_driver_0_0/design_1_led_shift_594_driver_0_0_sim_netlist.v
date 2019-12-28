// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Tue Dec 24 22:42:19 2019
// Host        : debian running 64-bit Debian GNU/Linux 9.11 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /home/tommy/src/tomarus/midirouter/midirouter.srcs/sources_1/bd/design_1/ip/design_1_led_shift_594_driver_0_0/design_1_led_shift_594_driver_0_0_sim_netlist.v
// Design      : design_1_led_shift_594_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_led_shift_594_driver_0_0,led_shift_594_driver_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "led_shift_594_driver_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_led_shift_594_driver_0_0
   (SCK,
    RCK,
    SER,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output SCK;
  output RCK;
  output SER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire RCK;
  wire SCK;
  wire SER;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0 inst
       (.RCK(RCK),
        .SCK(SCK),
        .SER(SER),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[0] ,
    \colpos_reg[1] ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssin_reg[1] ,
    Q,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[0] ;
  input \colpos_reg[1] ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssin_reg[1] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \counter[0]_i_1__15_n_0 ;
  wire \counter[1]_i_1__15_n_0 ;
  wire \counter[2]_i_1__15_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [0:0]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_reg;
  wire ser_reg_i_27_n_0;
  wire [0:0]\slv_reg0_reg[0] ;
  wire [0:0]\ssin_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__15 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[0] ),
        .O(\counter[0]_i_1__15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__15 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[0] ),
        .O(\counter[1]_i_1__15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__15 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[0] ),
        .O(\counter[2]_i_1__15_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__15_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__15_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__15_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_57
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  MUXF8 ser_reg_i_12
       (.I0(ser_reg_i_27_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg),
        .S(\colpos_reg[1] ));
  MUXF7 ser_reg_i_27
       (.I0(inact__15),
        .I1(\ssin_reg[1] ),
        .O(ser_reg_i_27_n_0),
        .S(\colpos_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_0
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[10] ,
    \colpos_reg[0] ,
    \ssin_reg[11] ,
    Q,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[10] ;
  input \colpos_reg[0] ;
  input [0:0]\ssin_reg[11] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__5_n_0 ;
  wire \counter[1]_i_1__5_n_0 ;
  wire \counter[2]_i_1__5_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [10:10]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\slv_reg0_reg[10] ;
  wire [0:0]\ssin_reg[11] ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__5 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[10] ),
        .O(\counter[0]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__5 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[10] ),
        .O(\counter[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__5 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[10] ),
        .O(\counter[2]_i_1__5_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_35
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  MUXF7 ser_reg_i_16
       (.I0(inact__15),
        .I1(\ssin_reg[11] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_1
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[11] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[11] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__4_n_0 ;
  wire \counter[1]_i_1__4_n_0 ;
  wire \counter[2]_i_1__4_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[11] ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__4 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[11] ),
        .O(\counter[0]_i_1__4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__4 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[11] ),
        .O(\counter[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__4 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[11] ),
        .O(\counter[2]_i_1__4_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__4_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__4_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__4_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_36
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_10
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[5] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[5] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__10_n_0 ;
  wire \counter[1]_i_1__10_n_0 ;
  wire \counter[2]_i_1__10_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[5] ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__10 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[5] ),
        .O(\counter[0]_i_1__10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__10 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[5] ),
        .O(\counter[1]_i_1__10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__10 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[5] ),
        .O(\counter[2]_i_1__10_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__10_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__10_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__10_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_54
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_11
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[6] ,
    \colpos_reg[0] ,
    \ssin_reg[7] ,
    Q,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[6] ;
  input \colpos_reg[0] ;
  input [0:0]\ssin_reg[7] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__9_n_0 ;
  wire \counter[1]_i_1__9_n_0 ;
  wire \counter[2]_i_1__9_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [6:6]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\slv_reg0_reg[6] ;
  wire [0:0]\ssin_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__9 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[6] ),
        .O(\counter[0]_i_1__9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__9 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[6] ),
        .O(\counter[1]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__9 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[6] ),
        .O(\counter[2]_i_1__9_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__9_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__9_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__9_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_55
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  MUXF7 ser_reg_i_26
       (.I0(inact__15),
        .I1(\ssin_reg[7] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_12
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[7] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[7] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__8_n_0 ;
  wire \counter[1]_i_1__8_n_0 ;
  wire \counter[2]_i_1__8_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__8 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[7] ),
        .O(\counter[0]_i_1__8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__8 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[7] ),
        .O(\counter[1]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__8 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[7] ),
        .O(\counter[2]_i_1__8_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__8_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__8_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__8_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_56
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_13
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[8] ,
    \colpos_reg[1] ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssin_reg[9] ,
    Q,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[8] ;
  input \colpos_reg[1] ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssin_reg[9] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \counter[0]_i_1__7_n_0 ;
  wire \counter[1]_i_1__7_n_0 ;
  wire \counter[2]_i_1__7_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [8:8]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_reg;
  wire ser_reg_i_15_n_0;
  wire [0:0]\slv_reg0_reg[8] ;
  wire [0:0]\ssin_reg[9] ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__7 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[8] ),
        .O(\counter[0]_i_1__7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__7 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[8] ),
        .O(\counter[1]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__7 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[8] ),
        .O(\counter[2]_i_1__7_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__7_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__7_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__7_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_33
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  MUXF7 ser_reg_i_15
       (.I0(inact__15),
        .I1(\ssin_reg[9] ),
        .O(ser_reg_i_15_n_0),
        .S(\colpos_reg[0]_0 ));
  MUXF8 ser_reg_i_6
       (.I0(ser_reg_i_15_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg),
        .S(\colpos_reg[1] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_14
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[9] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[9] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__6_n_0 ;
  wire \counter[1]_i_1__6_n_0 ;
  wire \counter[2]_i_1__6_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[9] ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__6 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[9] ),
        .O(\counter[0]_i_1__6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__6 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[9] ),
        .O(\counter[1]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__6 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[9] ),
        .O(\counter[2]_i_1__6_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__6_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__6_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__6_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_34
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_15
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[1] ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssout_reg[1] ,
    \ssout_reg[0] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[1] ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssout_reg[1] ;
  input [0:0]\ssout_reg[0] ;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [0:0]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire ser_reg_i_23_n_0;
  wire [0:0]\ssout_reg[0] ;
  wire [0:0]\ssout_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_49
       (.I0(\ssout_reg[0] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF8 ser_reg_i_10
       (.I0(ser_reg_i_23_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg),
        .S(\colpos_reg[1] ));
  MUXF7 ser_reg_i_23
       (.I0(outact__15),
        .I1(\ssout_reg[1] ),
        .O(ser_reg_i_23_n_0),
        .S(\colpos_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_16
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[0] ,
    \ssout_reg[11] ,
    \ssout_reg[10] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[0] ;
  input [0:0]\ssout_reg[11] ;
  input [0:0]\ssout_reg[10] ;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__21_n_0 ;
  wire \counter[1]_i_1__21_n_0 ;
  wire \counter[2]_i_1__21_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [10:10]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\ssout_reg[10] ;
  wire [0:0]\ssout_reg[11] ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__21 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__21 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__21 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__21_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__21_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__21_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__21_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_43
       (.I0(\ssout_reg[10] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF7 ser_reg_i_20
       (.I0(outact__15),
        .I1(\ssout_reg[11] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_17
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \ssout_reg[11] ,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input [0:0]\ssout_reg[11] ;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__20_n_0 ;
  wire \counter[1]_i_1__20_n_0 ;
  wire \counter[2]_i_1__20_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[11] ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__20 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__20 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__20 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__20_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__20_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__20_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__20_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_44
       (.I0(\ssout_reg[11] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_18
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[1] ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssout_reg[13] ,
    \ssout_reg[12] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[1] ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssout_reg[13] ;
  input [0:0]\ssout_reg[12] ;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \counter[0]_i_1__19_n_0 ;
  wire \counter[1]_i_1__19_n_0 ;
  wire \counter[2]_i_1__19_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [12:12]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire ser_reg_i_17_n_0;
  wire [0:0]\ssout_reg[12] ;
  wire [0:0]\ssout_reg[13] ;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__19 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__19 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__19 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__19_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__19_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__19_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__19_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_37
       (.I0(\ssout_reg[12] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF7 ser_reg_i_17
       (.I0(outact__15),
        .I1(\ssout_reg[13] ),
        .O(ser_reg_i_17_n_0),
        .S(\colpos_reg[0]_0 ));
  MUXF8 ser_reg_i_7
       (.I0(ser_reg_i_17_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg),
        .S(\colpos_reg[1] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_19
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \ssout_reg[13] ,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input [0:0]\ssout_reg[13] ;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__18_n_0 ;
  wire \counter[1]_i_1__18_n_0 ;
  wire \counter[2]_i_1__18_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[13] ;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__18 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__18 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__18 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__18_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__18_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__18_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__18_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_38
       (.I0(\ssout_reg[13] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_2
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[12] ,
    CO,
    \bitno_reg[2] ,
    \bitno_reg[1] ,
    \bitno_reg[0] ,
    \bitno_reg[3] ,
    \colpos_reg[1] ,
    \bitno_reg[0]_0 ,
    \colpos_reg[1]_0 ,
    \colpos_reg[2] ,
    \colpos_reg[1]_1 ,
    \colpos_reg[1]_2 ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssin_reg[13] ,
    Q,
    idle,
    clk2,
    D,
    SER);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[12] ;
  input [0:0]CO;
  input \bitno_reg[2] ;
  input \bitno_reg[1] ;
  input \bitno_reg[0] ;
  input \bitno_reg[3] ;
  input \colpos_reg[1] ;
  input \bitno_reg[0]_0 ;
  input \colpos_reg[1]_0 ;
  input \colpos_reg[2] ;
  input \colpos_reg[1]_1 ;
  input \colpos_reg[1]_2 ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssin_reg[13] ;
  input [0:0]Q;
  input idle;
  input clk2;
  input [0:0]D;
  input SER;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]Q;
  wire SER;
  wire \bitno_reg[0] ;
  wire \bitno_reg[0]_0 ;
  wire \bitno_reg[1] ;
  wire \bitno_reg[2] ;
  wire \bitno_reg[3] ;
  wire clk2;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \colpos_reg[1]_0 ;
  wire \colpos_reg[1]_1 ;
  wire \colpos_reg[1]_2 ;
  wire \colpos_reg[2] ;
  wire \counter[0]_i_1__3_n_0 ;
  wire \counter[1]_i_1__3_n_0 ;
  wire \counter[2]_i_1__3_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [12:12]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_i_2_n_0;
  wire ser_i_3_n_0;
  wire ser_reg;
  wire ser_reg_i_13_n_0;
  wire ser_reg_i_5_n_0;
  wire [0:0]\slv_reg0_reg[12] ;
  wire [0:0]\ssin_reg[13] ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__3 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[12] ),
        .O(\counter[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__3 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[12] ),
        .O(\counter[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__3 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[12] ),
        .O(\counter[2]_i_1__3_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__3_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    ser_i_1
       (.I0(ser_i_2_n_0),
        .I1(clk2),
        .I2(D),
        .I3(SER),
        .O(ser_reg));
  LUT6 #(
    .INIT(64'hAFEAAAEAAAAAAAAA)) 
    ser_i_2
       (.I0(CO),
        .I1(ser_i_3_n_0),
        .I2(\bitno_reg[2] ),
        .I3(\bitno_reg[1] ),
        .I4(\bitno_reg[0] ),
        .I5(\bitno_reg[3] ),
        .O(ser_i_2_n_0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_29
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ser_i_3
       (.I0(ser_reg_i_5_n_0),
        .I1(\colpos_reg[1] ),
        .I2(\bitno_reg[0]_0 ),
        .I3(\colpos_reg[1]_0 ),
        .I4(\colpos_reg[2] ),
        .I5(\colpos_reg[1]_1 ),
        .O(ser_i_3_n_0));
  MUXF7 ser_reg_i_13
       (.I0(inact__15),
        .I1(\ssin_reg[13] ),
        .O(ser_reg_i_13_n_0),
        .S(\colpos_reg[0]_0 ));
  MUXF8 ser_reg_i_5
       (.I0(ser_reg_i_13_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg_i_5_n_0),
        .S(\colpos_reg[1]_2 ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_20
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[0] ,
    \ssout_reg[15] ,
    \ssout_reg[14] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[0] ;
  input [0:0]\ssout_reg[15] ;
  input [0:0]\ssout_reg[14] ;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__17_n_0 ;
  wire \counter[1]_i_1__17_n_0 ;
  wire \counter[2]_i_1__17_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [14:14]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\ssout_reg[14] ;
  wire [0:0]\ssout_reg[15] ;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__17 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__17 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__17 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__17_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__17_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__17_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__17_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_39
       (.I0(\ssout_reg[14] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF7 ser_reg_i_18
       (.I0(outact__15),
        .I1(\ssout_reg[15] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_21
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \ssout_reg[15] ,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input [0:0]\ssout_reg[15] ;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__16_n_0 ;
  wire \counter[1]_i_1__16_n_0 ;
  wire \counter[2]_i_1__16_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[15] ;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__16 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__16 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__16 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__16_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__16_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__16_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__16_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_40
       (.I0(\ssout_reg[15] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_22
   (ledclk__20,
    ser_reg,
    s00_axi_aclk,
    Q,
    \ssout_reg[1] ,
    idle,
    ledclk_c_reg);
  output ledclk__20;
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input [0:0]Q;
  input [0:0]\ssout_reg[1] ;
  input idle;
  input [21:0]ledclk_c_reg;

  wire [0:0]Q;
  wire \counter[0]_i_1__30_n_0 ;
  wire \counter[1]_i_1__30_n_0 ;
  wire \counter[2]_i_1__30_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[2]_i_4_n_0 ;
  wire \counter[2]_i_5_n_0 ;
  wire \counter[2]_i_6_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [21:0]ledclk_c_reg;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__30 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__30 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__30 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__30_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \counter[2]_i_2 
       (.I0(\counter[2]_i_3_n_0 ),
        .I1(\counter[2]_i_4_n_0 ),
        .I2(\counter[2]_i_5_n_0 ),
        .I3(\counter[2]_i_6_n_0 ),
        .O(ledclk__20));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[2]_i_3 
       (.I0(ledclk_c_reg[13]),
        .I1(ledclk_c_reg[11]),
        .I2(ledclk_c_reg[12]),
        .I3(ledclk_c_reg[16]),
        .I4(ledclk_c_reg[14]),
        .I5(ledclk_c_reg[15]),
        .O(\counter[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[2]_i_4 
       (.I0(ledclk_c_reg[20]),
        .I1(ledclk_c_reg[21]),
        .I2(ledclk_c_reg[17]),
        .I3(ledclk_c_reg[18]),
        .I4(ledclk_c_reg[19]),
        .O(\counter[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[2]_i_5 
       (.I0(ledclk_c_reg[10]),
        .I1(ledclk_c_reg[9]),
        .I2(ledclk_c_reg[6]),
        .I3(ledclk_c_reg[7]),
        .I4(ledclk_c_reg[8]),
        .O(\counter[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[2]_i_6 
       (.I0(ledclk_c_reg[5]),
        .I1(ledclk_c_reg[3]),
        .I2(ledclk_c_reg[4]),
        .I3(ledclk_c_reg[0]),
        .I4(ledclk_c_reg[1]),
        .I5(ledclk_c_reg[2]),
        .O(\counter[2]_i_6_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__30_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__30_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__30_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_50
       (.I0(\ssout_reg[1] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_23
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[0] ,
    \ssout_reg[3] ,
    \ssout_reg[2] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[0] ;
  input [0:0]\ssout_reg[3] ;
  input [0:0]\ssout_reg[2] ;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__29_n_0 ;
  wire \counter[1]_i_1__29_n_0 ;
  wire \counter[2]_i_1__29_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [2:2]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\ssout_reg[2] ;
  wire [0:0]\ssout_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__29 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__29 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__29 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__29_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__29_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__29_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__29_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_51
       (.I0(\ssout_reg[2] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF7 ser_reg_i_24
       (.I0(outact__15),
        .I1(\ssout_reg[3] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_24
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \ssout_reg[3] ,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input [0:0]\ssout_reg[3] ;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__28_n_0 ;
  wire \counter[1]_i_1__28_n_0 ;
  wire \counter[2]_i_1__28_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__28 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__28 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__28 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__28_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__28_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__28_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__28_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_52
       (.I0(\ssout_reg[3] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_25
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[1] ,
    \bitno_reg[0] ,
    \colpos_reg[1]_0 ,
    \colpos_reg[2] ,
    \colpos_reg[1]_1 ,
    \colpos_reg[1]_2 ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssout_reg[5] ,
    \ssout_reg[4] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[1] ;
  input \bitno_reg[0] ;
  input \colpos_reg[1]_0 ;
  input \colpos_reg[2] ;
  input \colpos_reg[1]_1 ;
  input \colpos_reg[1]_2 ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssout_reg[5] ;
  input [0:0]\ssout_reg[4] ;
  input idle;

  wire [0:0]Q;
  wire \bitno_reg[0] ;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \colpos_reg[1]_0 ;
  wire \colpos_reg[1]_1 ;
  wire \colpos_reg[1]_2 ;
  wire \colpos_reg[2] ;
  wire \counter[0]_i_1__27_n_0 ;
  wire \counter[1]_i_1__27_n_0 ;
  wire \counter[2]_i_1__27_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [4:4]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire ser_reg_i_21_n_0;
  wire ser_reg_i_9_n_0;
  wire [0:0]\ssout_reg[4] ;
  wire [0:0]\ssout_reg[5] ;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__27 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__27 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__27 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__27_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__27_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__27_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__27_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ser_i_4
       (.I0(ser_reg_i_9_n_0),
        .I1(\colpos_reg[1] ),
        .I2(\bitno_reg[0] ),
        .I3(\colpos_reg[1]_0 ),
        .I4(\colpos_reg[2] ),
        .I5(\colpos_reg[1]_1 ),
        .O(ser_reg));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_45
       (.I0(\ssout_reg[4] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF7 ser_reg_i_21
       (.I0(outact__15),
        .I1(\ssout_reg[5] ),
        .O(ser_reg_i_21_n_0),
        .S(\colpos_reg[0]_0 ));
  MUXF8 ser_reg_i_9
       (.I0(ser_reg_i_21_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg_i_9_n_0),
        .S(\colpos_reg[1]_2 ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_26
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \ssout_reg[5] ,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input [0:0]\ssout_reg[5] ;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__26_n_0 ;
  wire \counter[1]_i_1__26_n_0 ;
  wire \counter[2]_i_1__26_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[5] ;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__26 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__26_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__26 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__26 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__26_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__26_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__26_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__26_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_46
       (.I0(\ssout_reg[5] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_27
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[0] ,
    \ssout_reg[7] ,
    \ssout_reg[6] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[0] ;
  input [0:0]\ssout_reg[7] ;
  input [0:0]\ssout_reg[6] ;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__25_n_0 ;
  wire \counter[1]_i_1__25_n_0 ;
  wire \counter[2]_i_1__25_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [6:6]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\ssout_reg[6] ;
  wire [0:0]\ssout_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__25 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__25 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__25 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__25_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__25_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__25_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__25_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_47
       (.I0(\ssout_reg[6] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF7 ser_reg_i_22
       (.I0(outact__15),
        .I1(\ssout_reg[7] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_28
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \ssout_reg[7] ,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input [0:0]\ssout_reg[7] ;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__24_n_0 ;
  wire \counter[1]_i_1__24_n_0 ;
  wire \counter[2]_i_1__24_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__24 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__24 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__24 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__24_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__24_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__24_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__24_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_48
       (.I0(\ssout_reg[7] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_29
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \colpos_reg[1] ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssout_reg[9] ,
    \ssout_reg[8] ,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input \colpos_reg[1] ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssout_reg[9] ;
  input [0:0]\ssout_reg[8] ;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \counter[0]_i_1__23_n_0 ;
  wire \counter[1]_i_1__23_n_0 ;
  wire \counter[2]_i_1__23_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire [8:8]outact__15;
  wire s00_axi_aclk;
  wire ser_reg;
  wire ser_reg_i_19_n_0;
  wire [0:0]\ssout_reg[8] ;
  wire [0:0]\ssout_reg[9] ;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__23 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__23_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__23 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__23 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__23_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__23_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__23_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__23_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_41
       (.I0(\ssout_reg[8] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(outact__15));
  MUXF7 ser_reg_i_19
       (.I0(outact__15),
        .I1(\ssout_reg[9] ),
        .O(ser_reg_i_19_n_0),
        .S(\colpos_reg[0]_0 ));
  MUXF8 ser_reg_i_8
       (.I0(ser_reg_i_19_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg),
        .S(\colpos_reg[1] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_3
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[13] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[13] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__2_n_0 ;
  wire \counter[1]_i_1__2_n_0 ;
  wire \counter[2]_i_1__2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[13] ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__2 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[13] ),
        .O(\counter[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__2 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[13] ),
        .O(\counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__2 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[13] ),
        .O(\counter[2]_i_1__2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_30
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_30
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    Q,
    \ssout_reg[9] ,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]Q;
  input [0:0]\ssout_reg[9] ;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__22_n_0 ;
  wire \counter[1]_i_1__22_n_0 ;
  wire \counter[2]_i_1__22_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\ssout_reg[9] ;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__22 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[0]_i_1__22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__22 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(Q),
        .O(\counter[1]_i_1__22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__22 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(Q),
        .O(\counter[2]_i_1__22_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__22_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__22_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__22_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_42
       (.I0(\ssout_reg[9] ),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_4
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[14] ,
    \colpos_reg[0] ,
    \ssin_reg[15] ,
    Q,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[14] ;
  input \colpos_reg[0] ;
  input [0:0]\ssin_reg[15] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[1]_i_1__1_n_0 ;
  wire \counter[2]_i_1__1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [14:14]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\slv_reg0_reg[14] ;
  wire [0:0]\ssin_reg[15] ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__1 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[14] ),
        .O(\counter[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__1 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[14] ),
        .O(\counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__1 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[14] ),
        .O(\counter[2]_i_1__1_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_31
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  MUXF7 ser_reg_i_14
       (.I0(inact__15),
        .I1(\ssin_reg[15] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_5
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[15] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[15] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[15] ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__0 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[15] ),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__0 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[15] ),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__0 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[15] ),
        .O(\counter[2]_i_1__0_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_32
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_6
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[1] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[1] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__14_n_0 ;
  wire \counter[1]_i_1__14_n_0 ;
  wire \counter[2]_i_1__14_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__14 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[1] ),
        .O(\counter[0]_i_1__14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__14 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[1] ),
        .O(\counter[1]_i_1__14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__14 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[1] ),
        .O(\counter[2]_i_1__14_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__14_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__14_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__14_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_58
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_7
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[2] ,
    \colpos_reg[0] ,
    \ssin_reg[3] ,
    Q,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[2] ;
  input \colpos_reg[0] ;
  input [0:0]\ssin_reg[3] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \counter[0]_i_1__13_n_0 ;
  wire \counter[1]_i_1__13_n_0 ;
  wire \counter[2]_i_1__13_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [2:2]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_reg;
  wire [0:0]\slv_reg0_reg[2] ;
  wire [0:0]\ssin_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__13 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[2] ),
        .O(\counter[0]_i_1__13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__13 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[2] ),
        .O(\counter[1]_i_1__13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__13 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[2] ),
        .O(\counter[2]_i_1__13_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__13_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__13_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__13_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_59
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  MUXF7 ser_reg_i_28
       (.I0(inact__15),
        .I1(\ssin_reg[3] ),
        .O(ser_reg),
        .S(\colpos_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_8
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[3] ,
    Q,
    idle);
  output [0:0]ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[3] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \counter[0]_i_1__12_n_0 ;
  wire \counter[1]_i_1__12_n_0 ;
  wire \counter[2]_i_1__12_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire [0:0]ser_reg;
  wire [0:0]\slv_reg0_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__12 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[3] ),
        .O(\counter[0]_i_1__12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__12 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[3] ),
        .O(\counter[1]_i_1__12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__12 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[3] ),
        .O(\counter[2]_i_1__12_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__12_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__12_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__12_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_60
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(ser_reg));
endmodule

(* ORIG_REF_NAME = "delayed" *) 
module design_1_led_shift_594_driver_0_0_delayed_9
   (ser_reg,
    s00_axi_aclk,
    ledclk__20,
    \slv_reg0_reg[4] ,
    \colpos_reg[1] ,
    \colpos_reg[0] ,
    \colpos_reg[0]_0 ,
    \ssin_reg[5] ,
    Q,
    idle);
  output ser_reg;
  input s00_axi_aclk;
  input ledclk__20;
  input [0:0]\slv_reg0_reg[4] ;
  input \colpos_reg[1] ;
  input \colpos_reg[0] ;
  input \colpos_reg[0]_0 ;
  input [0:0]\ssin_reg[5] ;
  input [0:0]Q;
  input idle;

  wire [0:0]Q;
  wire \colpos_reg[0] ;
  wire \colpos_reg[0]_0 ;
  wire \colpos_reg[1] ;
  wire \counter[0]_i_1__11_n_0 ;
  wire \counter[1]_i_1__11_n_0 ;
  wire \counter[2]_i_1__11_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire idle;
  wire [4:4]inact__15;
  wire ledclk__20;
  wire s00_axi_aclk;
  wire ser_reg;
  wire ser_reg_i_25_n_0;
  wire [0:0]\slv_reg0_reg[4] ;
  wire [0:0]\ssin_reg[5] ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFF55A8)) 
    \counter[0]_i_1__11 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[4] ),
        .O(\counter[0]_i_1__11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCC64)) 
    \counter[1]_i_1__11 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\slv_reg0_reg[4] ),
        .O(\counter[1]_i_1__11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0000F0D0)) 
    \counter[2]_i_1__11 
       (.I0(ledclk__20),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\slv_reg0_reg[4] ),
        .O(\counter[2]_i_1__11_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[0]_i_1__11_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__11_n_0 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[2]_i_1__11_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBBBBB8)) 
    ser_i_53
       (.I0(Q),
        .I1(idle),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(inact__15));
  MUXF8 ser_reg_i_11
       (.I0(ser_reg_i_25_n_0),
        .I1(\colpos_reg[0] ),
        .O(ser_reg),
        .S(\colpos_reg[1] ));
  MUXF7 ser_reg_i_25
       (.I0(inact__15),
        .I1(\ssin_reg[5] ),
        .O(ser_reg_i_25_n_0),
        .S(\colpos_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "led_shift_594_driver_v1_0" *) 
module design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    SCK,
    RCK,
    SER,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output SCK;
  output RCK;
  output SER;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire RCK;
  wire SCK;
  wire SER;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_10;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_11;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_12;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_13;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_14;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_15;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_16;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_17;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_18;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_19;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_20;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_21;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_22;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_23;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_24;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_25;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_26;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_27;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_28;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_29;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_30;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_31;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_32;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_33;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_34;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_35;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_36;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_37;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_6;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_7;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_8;
  wire led_shift_594_driver_v1_0_S00_AXI_inst_n_9;
  wire notidle;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0_S00_AXI led_shift_594_driver_v1_0_S00_AXI_inst
       (.Q({led_shift_594_driver_v1_0_S00_AXI_inst_n_6,led_shift_594_driver_v1_0_S00_AXI_inst_n_7,led_shift_594_driver_v1_0_S00_AXI_inst_n_8,led_shift_594_driver_v1_0_S00_AXI_inst_n_9,led_shift_594_driver_v1_0_S00_AXI_inst_n_10,led_shift_594_driver_v1_0_S00_AXI_inst_n_11,led_shift_594_driver_v1_0_S00_AXI_inst_n_12,led_shift_594_driver_v1_0_S00_AXI_inst_n_13,led_shift_594_driver_v1_0_S00_AXI_inst_n_14,led_shift_594_driver_v1_0_S00_AXI_inst_n_15,led_shift_594_driver_v1_0_S00_AXI_inst_n_16,led_shift_594_driver_v1_0_S00_AXI_inst_n_17,led_shift_594_driver_v1_0_S00_AXI_inst_n_18,led_shift_594_driver_v1_0_S00_AXI_inst_n_19,led_shift_594_driver_v1_0_S00_AXI_inst_n_20,led_shift_594_driver_v1_0_S00_AXI_inst_n_21}),
        .\axi_rdata_reg[15]_0 ({led_shift_594_driver_v1_0_S00_AXI_inst_n_22,led_shift_594_driver_v1_0_S00_AXI_inst_n_23,led_shift_594_driver_v1_0_S00_AXI_inst_n_24,led_shift_594_driver_v1_0_S00_AXI_inst_n_25,led_shift_594_driver_v1_0_S00_AXI_inst_n_26,led_shift_594_driver_v1_0_S00_AXI_inst_n_27,led_shift_594_driver_v1_0_S00_AXI_inst_n_28,led_shift_594_driver_v1_0_S00_AXI_inst_n_29,led_shift_594_driver_v1_0_S00_AXI_inst_n_30,led_shift_594_driver_v1_0_S00_AXI_inst_n_31,led_shift_594_driver_v1_0_S00_AXI_inst_n_32,led_shift_594_driver_v1_0_S00_AXI_inst_n_33,led_shift_594_driver_v1_0_S00_AXI_inst_n_34,led_shift_594_driver_v1_0_S00_AXI_inst_n_35,led_shift_594_driver_v1_0_S00_AXI_inst_n_36,led_shift_594_driver_v1_0_S00_AXI_inst_n_37}),
        .notidle(notidle),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  design_1_led_shift_594_driver_0_0_leds leds_inst
       (.Q({led_shift_594_driver_v1_0_S00_AXI_inst_n_6,led_shift_594_driver_v1_0_S00_AXI_inst_n_7,led_shift_594_driver_v1_0_S00_AXI_inst_n_8,led_shift_594_driver_v1_0_S00_AXI_inst_n_9,led_shift_594_driver_v1_0_S00_AXI_inst_n_10,led_shift_594_driver_v1_0_S00_AXI_inst_n_11,led_shift_594_driver_v1_0_S00_AXI_inst_n_12,led_shift_594_driver_v1_0_S00_AXI_inst_n_13,led_shift_594_driver_v1_0_S00_AXI_inst_n_14,led_shift_594_driver_v1_0_S00_AXI_inst_n_15,led_shift_594_driver_v1_0_S00_AXI_inst_n_16,led_shift_594_driver_v1_0_S00_AXI_inst_n_17,led_shift_594_driver_v1_0_S00_AXI_inst_n_18,led_shift_594_driver_v1_0_S00_AXI_inst_n_19,led_shift_594_driver_v1_0_S00_AXI_inst_n_20,led_shift_594_driver_v1_0_S00_AXI_inst_n_21}),
        .RCK(RCK),
        .SCK(SCK),
        .SER(SER),
        .notidle(notidle),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg0_reg[15] ({led_shift_594_driver_v1_0_S00_AXI_inst_n_22,led_shift_594_driver_v1_0_S00_AXI_inst_n_23,led_shift_594_driver_v1_0_S00_AXI_inst_n_24,led_shift_594_driver_v1_0_S00_AXI_inst_n_25,led_shift_594_driver_v1_0_S00_AXI_inst_n_26,led_shift_594_driver_v1_0_S00_AXI_inst_n_27,led_shift_594_driver_v1_0_S00_AXI_inst_n_28,led_shift_594_driver_v1_0_S00_AXI_inst_n_29,led_shift_594_driver_v1_0_S00_AXI_inst_n_30,led_shift_594_driver_v1_0_S00_AXI_inst_n_31,led_shift_594_driver_v1_0_S00_AXI_inst_n_32,led_shift_594_driver_v1_0_S00_AXI_inst_n_33,led_shift_594_driver_v1_0_S00_AXI_inst_n_34,led_shift_594_driver_v1_0_S00_AXI_inst_n_35,led_shift_594_driver_v1_0_S00_AXI_inst_n_36,led_shift_594_driver_v1_0_S00_AXI_inst_n_37}));
endmodule

(* ORIG_REF_NAME = "led_shift_594_driver_v1_0_S00_AXI" *) 
module design_1_led_shift_594_driver_0_0_led_shift_594_driver_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    notidle,
    Q,
    \axi_rdata_reg[15]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output notidle;
  output [15:0]Q;
  output [15:0]\axi_rdata_reg[15]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [15:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire [15:0]\axi_rdata_reg[15]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \idle_count[0]_i_10_n_0 ;
  wire \idle_count[0]_i_11_n_0 ;
  wire \idle_count[0]_i_3_n_0 ;
  wire \idle_count[0]_i_4_n_0 ;
  wire \idle_count[0]_i_5_n_0 ;
  wire \idle_count[0]_i_6_n_0 ;
  wire \idle_count[0]_i_8_n_0 ;
  wire \idle_count[0]_i_9_n_0 ;
  wire notidle;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(\axi_rdata_reg[15]_0 [0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(\axi_rdata_reg[15]_0 [10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(\axi_rdata_reg[15]_0 [11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(\axi_rdata_reg[15]_0 [12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(\axi_rdata_reg[15]_0 [13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(\axi_rdata_reg[15]_0 [14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(\axi_rdata_reg[15]_0 [15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(\slv_reg0_reg_n_0_[18] ),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(\slv_reg0_reg_n_0_[19] ),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[15]_0 [1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(\slv_reg0_reg_n_0_[20] ),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(\slv_reg0_reg_n_0_[21] ),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(\slv_reg0_reg_n_0_[22] ),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(\slv_reg0_reg_n_0_[23] ),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(\slv_reg0_reg_n_0_[24] ),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(\slv_reg0_reg_n_0_[25] ),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(\slv_reg0_reg_n_0_[26] ),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(\slv_reg0_reg_n_0_[27] ),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(\slv_reg0_reg_n_0_[28] ),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(\slv_reg0_reg_n_0_[29] ),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[15]_0 [2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(\slv_reg0_reg_n_0_[30] ),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(\slv_reg0_reg_n_0_[31] ),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(\axi_rdata_reg[15]_0 [3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(\axi_rdata_reg[15]_0 [4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(\axi_rdata_reg[15]_0 [5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\axi_rdata_reg[15]_0 [6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\axi_rdata_reg[15]_0 [7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(\axi_rdata_reg[15]_0 [8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(\axi_rdata_reg[15]_0 [9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idle_count[0]_i_1 
       (.I0(\idle_count[0]_i_3_n_0 ),
        .I1(\idle_count[0]_i_4_n_0 ),
        .I2(\idle_count[0]_i_5_n_0 ),
        .I3(\idle_count[0]_i_6_n_0 ),
        .O(notidle));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idle_count[0]_i_10 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\idle_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idle_count[0]_i_11 
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[8]),
        .I3(Q[9]),
        .O(\idle_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \idle_count[0]_i_3 
       (.I0(\axi_rdata_reg[15]_0 [5]),
        .I1(\axi_rdata_reg[15]_0 [4]),
        .I2(\axi_rdata_reg[15]_0 [7]),
        .I3(\axi_rdata_reg[15]_0 [6]),
        .I4(\idle_count[0]_i_8_n_0 ),
        .O(\idle_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \idle_count[0]_i_4 
       (.I0(\axi_rdata_reg[15]_0 [13]),
        .I1(\axi_rdata_reg[15]_0 [12]),
        .I2(\axi_rdata_reg[15]_0 [14]),
        .I3(\axi_rdata_reg[15]_0 [15]),
        .I4(\idle_count[0]_i_9_n_0 ),
        .O(\idle_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \idle_count[0]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(\idle_count[0]_i_10_n_0 ),
        .O(\idle_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \idle_count[0]_i_6 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(\idle_count[0]_i_11_n_0 ),
        .O(\idle_count[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idle_count[0]_i_8 
       (.I0(\axi_rdata_reg[15]_0 [2]),
        .I1(\axi_rdata_reg[15]_0 [3]),
        .I2(\axi_rdata_reg[15]_0 [0]),
        .I3(\axi_rdata_reg[15]_0 [1]),
        .O(\idle_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \idle_count[0]_i_9 
       (.I0(\axi_rdata_reg[15]_0 [10]),
        .I1(\axi_rdata_reg[15]_0 [11]),
        .I2(\axi_rdata_reg[15]_0 [8]),
        .I3(\axi_rdata_reg[15]_0 [9]),
        .O(\idle_count[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\axi_rdata_reg[15]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\axi_rdata_reg[15]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\axi_rdata_reg[15]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\axi_rdata_reg[15]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\axi_rdata_reg[15]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\axi_rdata_reg[15]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\axi_rdata_reg[15]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\axi_rdata_reg[15]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\axi_rdata_reg[15]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\axi_rdata_reg[15]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\axi_rdata_reg[15]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\axi_rdata_reg[15]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\axi_rdata_reg[15]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\axi_rdata_reg[15]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\axi_rdata_reg[15]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\axi_rdata_reg[15]_0 [9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "leds" *) 
module design_1_led_shift_594_driver_0_0_leds
   (SCK,
    RCK,
    SER,
    s00_axi_aclk,
    notidle,
    Q,
    \slv_reg0_reg[15] );
  output SCK;
  output RCK;
  output SER;
  input s00_axi_aclk;
  input notidle;
  input [15:0]Q;
  input [15:0]\slv_reg0_reg[15] ;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [15:0]Q;
  wire RCK;
  wire SCK;
  wire SER;
  wire \bitno[0]_i_1_n_0 ;
  wire \bitno[1]_i_1_n_0 ;
  wire \bitno[2]_i_1_n_0 ;
  wire \bitno[3]_i_1_n_0 ;
  wire \bitno[3]_i_2_n_0 ;
  wire \bitno[3]_i_3_n_0 ;
  wire \bitno_reg_n_0_[0] ;
  wire \bitno_reg_n_0_[1] ;
  wire \bitno_reg_n_0_[2] ;
  wire \bitno_reg_n_0_[3] ;
  wire clk2;
  wire \clk_cntr[0]_i_2_n_0 ;
  wire \clk_cntr[0]_i_3_n_0 ;
  wire \clk_cntr[0]_i_4_n_0 ;
  wire \clk_cntr[0]_i_5_n_0 ;
  wire \clk_cntr[0]_i_6_n_0 ;
  wire \clk_cntr[4]_i_2_n_0 ;
  wire \clk_cntr[4]_i_3_n_0 ;
  wire \clk_cntr[4]_i_4_n_0 ;
  wire \clk_cntr[4]_i_5_n_0 ;
  wire \clk_cntr[8]_i_2_n_0 ;
  wire \clk_cntr[8]_i_3_n_0 ;
  wire \clk_cntr[8]_i_4_n_0 ;
  wire \clk_cntr_reg[0]_i_1_n_0 ;
  wire \clk_cntr_reg[0]_i_1_n_1 ;
  wire \clk_cntr_reg[0]_i_1_n_2 ;
  wire \clk_cntr_reg[0]_i_1_n_3 ;
  wire \clk_cntr_reg[0]_i_1_n_4 ;
  wire \clk_cntr_reg[0]_i_1_n_5 ;
  wire \clk_cntr_reg[0]_i_1_n_6 ;
  wire \clk_cntr_reg[0]_i_1_n_7 ;
  wire \clk_cntr_reg[4]_i_1_n_0 ;
  wire \clk_cntr_reg[4]_i_1_n_1 ;
  wire \clk_cntr_reg[4]_i_1_n_2 ;
  wire \clk_cntr_reg[4]_i_1_n_3 ;
  wire \clk_cntr_reg[4]_i_1_n_4 ;
  wire \clk_cntr_reg[4]_i_1_n_5 ;
  wire \clk_cntr_reg[4]_i_1_n_6 ;
  wire \clk_cntr_reg[4]_i_1_n_7 ;
  wire \clk_cntr_reg[8]_i_1_n_0 ;
  wire \clk_cntr_reg[8]_i_1_n_2 ;
  wire \clk_cntr_reg[8]_i_1_n_3 ;
  wire \clk_cntr_reg[8]_i_1_n_5 ;
  wire \clk_cntr_reg[8]_i_1_n_6 ;
  wire \clk_cntr_reg[8]_i_1_n_7 ;
  wire \clk_cntr_reg_n_0_[0] ;
  wire \clk_cntr_reg_n_0_[10] ;
  wire \clk_cntr_reg_n_0_[1] ;
  wire \clk_cntr_reg_n_0_[2] ;
  wire \clk_cntr_reg_n_0_[3] ;
  wire \clk_cntr_reg_n_0_[4] ;
  wire \clk_cntr_reg_n_0_[5] ;
  wire \clk_cntr_reg_n_0_[6] ;
  wire \clk_cntr_reg_n_0_[7] ;
  wire \clk_cntr_reg_n_0_[8] ;
  wire \clk_cntr_reg_n_0_[9] ;
  (* RTL_KEEP = "yes" *) wire colpos;
  wire \colpos[0]_i_1_n_0 ;
  wire \colpos[1]_i_1_n_0 ;
  wire \colpos[2]_i_1_n_0 ;
  wire \colpos_reg_n_0_[0] ;
  wire \colpos_reg_n_0_[1] ;
  wire \colpos_reg_n_0_[2] ;
  wire idle;
  wire \idle_count[0]_i_7_n_0 ;
  wire \idle_count_reg[0]_i_2_n_0 ;
  wire \idle_count_reg[0]_i_2_n_1 ;
  wire \idle_count_reg[0]_i_2_n_2 ;
  wire \idle_count_reg[0]_i_2_n_3 ;
  wire \idle_count_reg[0]_i_2_n_4 ;
  wire \idle_count_reg[0]_i_2_n_5 ;
  wire \idle_count_reg[0]_i_2_n_6 ;
  wire \idle_count_reg[0]_i_2_n_7 ;
  wire \idle_count_reg[12]_i_1_n_0 ;
  wire \idle_count_reg[12]_i_1_n_1 ;
  wire \idle_count_reg[12]_i_1_n_2 ;
  wire \idle_count_reg[12]_i_1_n_3 ;
  wire \idle_count_reg[12]_i_1_n_4 ;
  wire \idle_count_reg[12]_i_1_n_5 ;
  wire \idle_count_reg[12]_i_1_n_6 ;
  wire \idle_count_reg[12]_i_1_n_7 ;
  wire \idle_count_reg[16]_i_1_n_0 ;
  wire \idle_count_reg[16]_i_1_n_1 ;
  wire \idle_count_reg[16]_i_1_n_2 ;
  wire \idle_count_reg[16]_i_1_n_3 ;
  wire \idle_count_reg[16]_i_1_n_4 ;
  wire \idle_count_reg[16]_i_1_n_5 ;
  wire \idle_count_reg[16]_i_1_n_6 ;
  wire \idle_count_reg[16]_i_1_n_7 ;
  wire \idle_count_reg[20]_i_1_n_0 ;
  wire \idle_count_reg[20]_i_1_n_1 ;
  wire \idle_count_reg[20]_i_1_n_2 ;
  wire \idle_count_reg[20]_i_1_n_3 ;
  wire \idle_count_reg[20]_i_1_n_4 ;
  wire \idle_count_reg[20]_i_1_n_5 ;
  wire \idle_count_reg[20]_i_1_n_6 ;
  wire \idle_count_reg[20]_i_1_n_7 ;
  wire \idle_count_reg[24]_i_1_n_0 ;
  wire \idle_count_reg[24]_i_1_n_1 ;
  wire \idle_count_reg[24]_i_1_n_2 ;
  wire \idle_count_reg[24]_i_1_n_3 ;
  wire \idle_count_reg[24]_i_1_n_4 ;
  wire \idle_count_reg[24]_i_1_n_5 ;
  wire \idle_count_reg[24]_i_1_n_6 ;
  wire \idle_count_reg[24]_i_1_n_7 ;
  wire \idle_count_reg[28]_i_1_n_1 ;
  wire \idle_count_reg[28]_i_1_n_2 ;
  wire \idle_count_reg[28]_i_1_n_3 ;
  wire \idle_count_reg[28]_i_1_n_4 ;
  wire \idle_count_reg[28]_i_1_n_5 ;
  wire \idle_count_reg[28]_i_1_n_6 ;
  wire \idle_count_reg[28]_i_1_n_7 ;
  wire \idle_count_reg[4]_i_1_n_0 ;
  wire \idle_count_reg[4]_i_1_n_1 ;
  wire \idle_count_reg[4]_i_1_n_2 ;
  wire \idle_count_reg[4]_i_1_n_3 ;
  wire \idle_count_reg[4]_i_1_n_4 ;
  wire \idle_count_reg[4]_i_1_n_5 ;
  wire \idle_count_reg[4]_i_1_n_6 ;
  wire \idle_count_reg[4]_i_1_n_7 ;
  wire \idle_count_reg[8]_i_1_n_0 ;
  wire \idle_count_reg[8]_i_1_n_1 ;
  wire \idle_count_reg[8]_i_1_n_2 ;
  wire \idle_count_reg[8]_i_1_n_3 ;
  wire \idle_count_reg[8]_i_1_n_4 ;
  wire \idle_count_reg[8]_i_1_n_5 ;
  wire \idle_count_reg[8]_i_1_n_6 ;
  wire \idle_count_reg[8]_i_1_n_7 ;
  wire \idle_count_reg_n_0_[0] ;
  wire \idle_count_reg_n_0_[10] ;
  wire \idle_count_reg_n_0_[11] ;
  wire \idle_count_reg_n_0_[12] ;
  wire \idle_count_reg_n_0_[13] ;
  wire \idle_count_reg_n_0_[14] ;
  wire \idle_count_reg_n_0_[15] ;
  wire \idle_count_reg_n_0_[16] ;
  wire \idle_count_reg_n_0_[17] ;
  wire \idle_count_reg_n_0_[18] ;
  wire \idle_count_reg_n_0_[19] ;
  wire \idle_count_reg_n_0_[1] ;
  wire \idle_count_reg_n_0_[20] ;
  wire \idle_count_reg_n_0_[21] ;
  wire \idle_count_reg_n_0_[22] ;
  wire \idle_count_reg_n_0_[23] ;
  wire \idle_count_reg_n_0_[24] ;
  wire \idle_count_reg_n_0_[25] ;
  wire \idle_count_reg_n_0_[26] ;
  wire \idle_count_reg_n_0_[27] ;
  wire \idle_count_reg_n_0_[28] ;
  wire \idle_count_reg_n_0_[29] ;
  wire \idle_count_reg_n_0_[2] ;
  wire \idle_count_reg_n_0_[30] ;
  wire \idle_count_reg_n_0_[3] ;
  wire \idle_count_reg_n_0_[4] ;
  wire \idle_count_reg_n_0_[5] ;
  wire \idle_count_reg_n_0_[6] ;
  wire \idle_count_reg_n_0_[7] ;
  wire \idle_count_reg_n_0_[8] ;
  wire \idle_count_reg_n_0_[9] ;
  wire [15:1]inact__15;
  wire \input_leds_inst_n_0_[0] ;
  wire \input_leds_inst_n_0_[10] ;
  wire \input_leds_inst_n_0_[12] ;
  wire \input_leds_inst_n_0_[14] ;
  wire \input_leds_inst_n_0_[2] ;
  wire \input_leds_inst_n_0_[4] ;
  wire \input_leds_inst_n_0_[6] ;
  wire \input_leds_inst_n_0_[8] ;
  wire ledclk__20;
  wire \ledclk_c[0]_i_2_n_0 ;
  wire [21:0]ledclk_c_reg;
  wire \ledclk_c_reg[0]_i_1_n_0 ;
  wire \ledclk_c_reg[0]_i_1_n_1 ;
  wire \ledclk_c_reg[0]_i_1_n_2 ;
  wire \ledclk_c_reg[0]_i_1_n_3 ;
  wire \ledclk_c_reg[0]_i_1_n_4 ;
  wire \ledclk_c_reg[0]_i_1_n_5 ;
  wire \ledclk_c_reg[0]_i_1_n_6 ;
  wire \ledclk_c_reg[0]_i_1_n_7 ;
  wire \ledclk_c_reg[12]_i_1_n_0 ;
  wire \ledclk_c_reg[12]_i_1_n_1 ;
  wire \ledclk_c_reg[12]_i_1_n_2 ;
  wire \ledclk_c_reg[12]_i_1_n_3 ;
  wire \ledclk_c_reg[12]_i_1_n_4 ;
  wire \ledclk_c_reg[12]_i_1_n_5 ;
  wire \ledclk_c_reg[12]_i_1_n_6 ;
  wire \ledclk_c_reg[12]_i_1_n_7 ;
  wire \ledclk_c_reg[16]_i_1_n_0 ;
  wire \ledclk_c_reg[16]_i_1_n_1 ;
  wire \ledclk_c_reg[16]_i_1_n_2 ;
  wire \ledclk_c_reg[16]_i_1_n_3 ;
  wire \ledclk_c_reg[16]_i_1_n_4 ;
  wire \ledclk_c_reg[16]_i_1_n_5 ;
  wire \ledclk_c_reg[16]_i_1_n_6 ;
  wire \ledclk_c_reg[16]_i_1_n_7 ;
  wire \ledclk_c_reg[20]_i_1_n_3 ;
  wire \ledclk_c_reg[20]_i_1_n_6 ;
  wire \ledclk_c_reg[20]_i_1_n_7 ;
  wire \ledclk_c_reg[4]_i_1_n_0 ;
  wire \ledclk_c_reg[4]_i_1_n_1 ;
  wire \ledclk_c_reg[4]_i_1_n_2 ;
  wire \ledclk_c_reg[4]_i_1_n_3 ;
  wire \ledclk_c_reg[4]_i_1_n_4 ;
  wire \ledclk_c_reg[4]_i_1_n_5 ;
  wire \ledclk_c_reg[4]_i_1_n_6 ;
  wire \ledclk_c_reg[4]_i_1_n_7 ;
  wire \ledclk_c_reg[8]_i_1_n_0 ;
  wire \ledclk_c_reg[8]_i_1_n_1 ;
  wire \ledclk_c_reg[8]_i_1_n_2 ;
  wire \ledclk_c_reg[8]_i_1_n_3 ;
  wire \ledclk_c_reg[8]_i_1_n_4 ;
  wire \ledclk_c_reg[8]_i_1_n_5 ;
  wire \ledclk_c_reg[8]_i_1_n_6 ;
  wire \ledclk_c_reg[8]_i_1_n_7 ;
  wire notidle;
  wire [15:1]outact__15;
  wire \output_leds_inst_n_0_[0] ;
  wire \output_leds_inst_n_0_[10] ;
  wire \output_leds_inst_n_0_[12] ;
  wire \output_leds_inst_n_0_[14] ;
  wire \output_leds_inst_n_0_[2] ;
  wire \output_leds_inst_n_0_[4] ;
  wire \output_leds_inst_n_0_[6] ;
  wire \output_leds_inst_n_0_[8] ;
  wire rck_i_1_n_0;
  wire s00_axi_aclk;
  wire sck_i_1_n_0;
  wire sel;
  wire ser1_carry__0_i_1_n_0;
  wire ser1_carry__0_i_2_n_0;
  wire ser1_carry__0_i_3_n_0;
  wire ser1_carry__0_i_4_n_0;
  wire ser1_carry__0_n_0;
  wire ser1_carry__0_n_1;
  wire ser1_carry__0_n_2;
  wire ser1_carry__0_n_3;
  wire ser1_carry__1_i_1_n_0;
  wire ser1_carry__1_i_2_n_0;
  wire ser1_carry__1_i_3_n_0;
  wire ser1_carry__1_n_1;
  wire ser1_carry__1_n_2;
  wire ser1_carry__1_n_3;
  wire ser1_carry_i_1_n_0;
  wire ser1_carry_i_2_n_0;
  wire ser1_carry_i_3_n_0;
  wire ser1_carry_i_4_n_0;
  wire ser1_carry_n_0;
  wire ser1_carry_n_1;
  wire ser1_carry_n_2;
  wire ser1_carry_n_3;
  wire [15:0]\slv_reg0_reg[15] ;
  wire [2:0]ssbitno;
  wire \ssbitno[0]_i_1_n_0 ;
  wire \ssbitno[1]_i_1_n_0 ;
  wire \ssbitno[2]_i_1_n_0 ;
  wire ssclk2;
  wire \ssclk_cntr[0]_i_2_n_0 ;
  wire \ssclk_cntr[0]_i_3_n_0 ;
  wire \ssclk_cntr[0]_i_4_n_0 ;
  wire \ssclk_cntr[0]_i_5_n_0 ;
  wire \ssclk_cntr[0]_i_6_n_0 ;
  wire \ssclk_cntr[12]_i_2_n_0 ;
  wire \ssclk_cntr[12]_i_3_n_0 ;
  wire \ssclk_cntr[12]_i_4_n_0 ;
  wire \ssclk_cntr[12]_i_5_n_0 ;
  wire \ssclk_cntr[16]_i_2_n_0 ;
  wire \ssclk_cntr[16]_i_3_n_0 ;
  wire \ssclk_cntr[16]_i_4_n_0 ;
  wire \ssclk_cntr[16]_i_5_n_0 ;
  wire \ssclk_cntr[20]_i_2_n_0 ;
  wire \ssclk_cntr[20]_i_3_n_0 ;
  wire \ssclk_cntr[20]_i_4_n_0 ;
  wire \ssclk_cntr[4]_i_2_n_0 ;
  wire \ssclk_cntr[4]_i_3_n_0 ;
  wire \ssclk_cntr[4]_i_4_n_0 ;
  wire \ssclk_cntr[4]_i_5_n_0 ;
  wire \ssclk_cntr[8]_i_2_n_0 ;
  wire \ssclk_cntr[8]_i_3_n_0 ;
  wire \ssclk_cntr[8]_i_4_n_0 ;
  wire \ssclk_cntr[8]_i_5_n_0 ;
  wire \ssclk_cntr_reg[0]_i_1_n_0 ;
  wire \ssclk_cntr_reg[0]_i_1_n_1 ;
  wire \ssclk_cntr_reg[0]_i_1_n_2 ;
  wire \ssclk_cntr_reg[0]_i_1_n_3 ;
  wire \ssclk_cntr_reg[0]_i_1_n_4 ;
  wire \ssclk_cntr_reg[0]_i_1_n_5 ;
  wire \ssclk_cntr_reg[0]_i_1_n_6 ;
  wire \ssclk_cntr_reg[0]_i_1_n_7 ;
  wire \ssclk_cntr_reg[12]_i_1_n_0 ;
  wire \ssclk_cntr_reg[12]_i_1_n_1 ;
  wire \ssclk_cntr_reg[12]_i_1_n_2 ;
  wire \ssclk_cntr_reg[12]_i_1_n_3 ;
  wire \ssclk_cntr_reg[12]_i_1_n_4 ;
  wire \ssclk_cntr_reg[12]_i_1_n_5 ;
  wire \ssclk_cntr_reg[12]_i_1_n_6 ;
  wire \ssclk_cntr_reg[12]_i_1_n_7 ;
  wire \ssclk_cntr_reg[16]_i_1_n_0 ;
  wire \ssclk_cntr_reg[16]_i_1_n_1 ;
  wire \ssclk_cntr_reg[16]_i_1_n_2 ;
  wire \ssclk_cntr_reg[16]_i_1_n_3 ;
  wire \ssclk_cntr_reg[16]_i_1_n_4 ;
  wire \ssclk_cntr_reg[16]_i_1_n_5 ;
  wire \ssclk_cntr_reg[16]_i_1_n_6 ;
  wire \ssclk_cntr_reg[16]_i_1_n_7 ;
  wire \ssclk_cntr_reg[20]_i_1_n_0 ;
  wire \ssclk_cntr_reg[20]_i_1_n_2 ;
  wire \ssclk_cntr_reg[20]_i_1_n_3 ;
  wire \ssclk_cntr_reg[20]_i_1_n_5 ;
  wire \ssclk_cntr_reg[20]_i_1_n_6 ;
  wire \ssclk_cntr_reg[20]_i_1_n_7 ;
  wire \ssclk_cntr_reg[4]_i_1_n_0 ;
  wire \ssclk_cntr_reg[4]_i_1_n_1 ;
  wire \ssclk_cntr_reg[4]_i_1_n_2 ;
  wire \ssclk_cntr_reg[4]_i_1_n_3 ;
  wire \ssclk_cntr_reg[4]_i_1_n_4 ;
  wire \ssclk_cntr_reg[4]_i_1_n_5 ;
  wire \ssclk_cntr_reg[4]_i_1_n_6 ;
  wire \ssclk_cntr_reg[4]_i_1_n_7 ;
  wire \ssclk_cntr_reg[8]_i_1_n_0 ;
  wire \ssclk_cntr_reg[8]_i_1_n_1 ;
  wire \ssclk_cntr_reg[8]_i_1_n_2 ;
  wire \ssclk_cntr_reg[8]_i_1_n_3 ;
  wire \ssclk_cntr_reg[8]_i_1_n_4 ;
  wire \ssclk_cntr_reg[8]_i_1_n_5 ;
  wire \ssclk_cntr_reg[8]_i_1_n_6 ;
  wire \ssclk_cntr_reg[8]_i_1_n_7 ;
  wire \ssclk_cntr_reg_n_0_[0] ;
  wire \ssclk_cntr_reg_n_0_[10] ;
  wire \ssclk_cntr_reg_n_0_[11] ;
  wire \ssclk_cntr_reg_n_0_[12] ;
  wire \ssclk_cntr_reg_n_0_[13] ;
  wire \ssclk_cntr_reg_n_0_[14] ;
  wire \ssclk_cntr_reg_n_0_[15] ;
  wire \ssclk_cntr_reg_n_0_[16] ;
  wire \ssclk_cntr_reg_n_0_[17] ;
  wire \ssclk_cntr_reg_n_0_[18] ;
  wire \ssclk_cntr_reg_n_0_[19] ;
  wire \ssclk_cntr_reg_n_0_[1] ;
  wire \ssclk_cntr_reg_n_0_[20] ;
  wire \ssclk_cntr_reg_n_0_[21] ;
  wire \ssclk_cntr_reg_n_0_[22] ;
  wire \ssclk_cntr_reg_n_0_[2] ;
  wire \ssclk_cntr_reg_n_0_[3] ;
  wire \ssclk_cntr_reg_n_0_[4] ;
  wire \ssclk_cntr_reg_n_0_[5] ;
  wire \ssclk_cntr_reg_n_0_[6] ;
  wire \ssclk_cntr_reg_n_0_[7] ;
  wire \ssclk_cntr_reg_n_0_[8] ;
  wire \ssclk_cntr_reg_n_0_[9] ;
  wire [7:0]ssin;
  wire \ssin[15]_i_3_n_0 ;
  wire \ssin[15]_i_5_n_0 ;
  wire \ssin[15]_i_6_n_0 ;
  wire \ssin[7]_i_1_n_0 ;
  wire \ssin[7]_i_3_n_0 ;
  wire \ssin[7]_i_4_n_0 ;
  wire \ssin_reg[15]_i_4_n_0 ;
  wire \ssin_reg[7]_i_2_n_0 ;
  wire \ssin_reg_n_0_[0] ;
  wire \ssin_reg_n_0_[10] ;
  wire \ssin_reg_n_0_[11] ;
  wire \ssin_reg_n_0_[12] ;
  wire \ssin_reg_n_0_[13] ;
  wire \ssin_reg_n_0_[14] ;
  wire \ssin_reg_n_0_[15] ;
  wire \ssin_reg_n_0_[1] ;
  wire \ssin_reg_n_0_[2] ;
  wire \ssin_reg_n_0_[3] ;
  wire \ssin_reg_n_0_[4] ;
  wire \ssin_reg_n_0_[5] ;
  wire \ssin_reg_n_0_[6] ;
  wire \ssin_reg_n_0_[7] ;
  wire \ssin_reg_n_0_[8] ;
  wire \ssin_reg_n_0_[9] ;
  wire [15:0]ssout;
  wire \ssout[15]_i_1_n_0 ;
  wire \ssout[15]_i_3_n_0 ;
  wire \ssout[15]_i_4_n_0 ;
  wire \ssout[7]_i_1_n_0 ;
  wire \ssout[7]_i_3_n_0 ;
  wire \ssout[7]_i_4_n_0 ;
  wire \ssout_reg[15]_i_2_n_0 ;
  wire \ssout_reg[7]_i_2_n_0 ;
  wire [2:2]\NLW_clk_cntr_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_cntr_reg[8]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_idle_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_ledclk_c_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_ledclk_c_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_ser1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ser1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_ser1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ser1_carry__1_O_UNCONNECTED;
  wire [2:2]\NLW_ssclk_cntr_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ssclk_cntr_reg[20]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(colpos),
        .I1(\bitno_reg_n_0_[3] ),
        .I2(\bitno_reg_n_0_[2] ),
        .I3(\bitno_reg_n_0_[0] ),
        .I4(\bitno_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[1] ),
        .I2(\bitno_reg_n_0_[0] ),
        .I3(\bitno_reg_n_0_[2] ),
        .I4(\bitno_reg_n_0_[3] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(clk2),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(colpos),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(clk2),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(clk2),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_INIT:0001,STATE_LOOP:0100,STATE_SEND:0010,STATE_DONE:1000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(clk2),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \bitno[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .O(\bitno[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \bitno[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[1] ),
        .I2(\bitno_reg_n_0_[0] ),
        .O(\bitno[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8882)) 
    \bitno[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[2] ),
        .I2(\bitno_reg_n_0_[0] ),
        .I3(\bitno_reg_n_0_[1] ),
        .O(\bitno[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bitno[3]_i_1 
       (.I0(colpos),
        .I1(clk2),
        .O(\bitno[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \bitno[3]_i_2 
       (.I0(clk2),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(colpos),
        .O(\bitno[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88888882)) 
    \bitno[3]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[3] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[0] ),
        .I4(\bitno_reg_n_0_[2] ),
        .O(\bitno[3]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \bitno_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bitno[3]_i_2_n_0 ),
        .D(\bitno[0]_i_1_n_0 ),
        .Q(\bitno_reg_n_0_[0] ),
        .S(\bitno[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \bitno_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bitno[3]_i_2_n_0 ),
        .D(\bitno[1]_i_1_n_0 ),
        .Q(\bitno_reg_n_0_[1] ),
        .S(\bitno[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \bitno_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bitno[3]_i_2_n_0 ),
        .D(\bitno[2]_i_1_n_0 ),
        .Q(\bitno_reg_n_0_[2] ),
        .S(\bitno[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \bitno_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bitno[3]_i_2_n_0 ),
        .D(\bitno[3]_i_3_n_0 ),
        .Q(\bitno_reg_n_0_[3] ),
        .S(\bitno[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[0]_i_2 
       (.I0(\clk_cntr_reg_n_0_[0] ),
        .I1(clk2),
        .O(\clk_cntr[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[0]_i_3 
       (.I0(\clk_cntr_reg_n_0_[3] ),
        .I1(clk2),
        .O(\clk_cntr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[0]_i_4 
       (.I0(\clk_cntr_reg_n_0_[2] ),
        .I1(clk2),
        .O(\clk_cntr[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[0]_i_5 
       (.I0(\clk_cntr_reg_n_0_[1] ),
        .I1(clk2),
        .O(\clk_cntr[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cntr[0]_i_6 
       (.I0(\clk_cntr_reg_n_0_[0] ),
        .I1(clk2),
        .O(\clk_cntr[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[4]_i_2 
       (.I0(\clk_cntr_reg_n_0_[7] ),
        .I1(clk2),
        .O(\clk_cntr[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[4]_i_3 
       (.I0(\clk_cntr_reg_n_0_[6] ),
        .I1(clk2),
        .O(\clk_cntr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[4]_i_4 
       (.I0(\clk_cntr_reg_n_0_[5] ),
        .I1(clk2),
        .O(\clk_cntr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[4]_i_5 
       (.I0(\clk_cntr_reg_n_0_[4] ),
        .I1(clk2),
        .O(\clk_cntr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[8]_i_2 
       (.I0(\clk_cntr_reg_n_0_[10] ),
        .I1(clk2),
        .O(\clk_cntr[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[8]_i_3 
       (.I0(\clk_cntr_reg_n_0_[9] ),
        .I1(clk2),
        .O(\clk_cntr[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_cntr[8]_i_4 
       (.I0(\clk_cntr_reg_n_0_[8] ),
        .I1(clk2),
        .O(\clk_cntr[8]_i_4_n_0 ));
  FDRE \clk_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[0]_i_1_n_7 ),
        .Q(\clk_cntr_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \clk_cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_cntr_reg[0]_i_1_n_0 ,\clk_cntr_reg[0]_i_1_n_1 ,\clk_cntr_reg[0]_i_1_n_2 ,\clk_cntr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\clk_cntr[0]_i_2_n_0 }),
        .O({\clk_cntr_reg[0]_i_1_n_4 ,\clk_cntr_reg[0]_i_1_n_5 ,\clk_cntr_reg[0]_i_1_n_6 ,\clk_cntr_reg[0]_i_1_n_7 }),
        .S({\clk_cntr[0]_i_3_n_0 ,\clk_cntr[0]_i_4_n_0 ,\clk_cntr[0]_i_5_n_0 ,\clk_cntr[0]_i_6_n_0 }));
  FDRE \clk_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[8]_i_1_n_5 ),
        .Q(\clk_cntr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \clk_cntr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[8]_i_1_n_0 ),
        .Q(clk2),
        .R(1'b0));
  FDRE \clk_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[0]_i_1_n_6 ),
        .Q(\clk_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \clk_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[0]_i_1_n_5 ),
        .Q(\clk_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \clk_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[0]_i_1_n_4 ),
        .Q(\clk_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \clk_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[4]_i_1_n_7 ),
        .Q(\clk_cntr_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \clk_cntr_reg[4]_i_1 
       (.CI(\clk_cntr_reg[0]_i_1_n_0 ),
        .CO({\clk_cntr_reg[4]_i_1_n_0 ,\clk_cntr_reg[4]_i_1_n_1 ,\clk_cntr_reg[4]_i_1_n_2 ,\clk_cntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cntr_reg[4]_i_1_n_4 ,\clk_cntr_reg[4]_i_1_n_5 ,\clk_cntr_reg[4]_i_1_n_6 ,\clk_cntr_reg[4]_i_1_n_7 }),
        .S({\clk_cntr[4]_i_2_n_0 ,\clk_cntr[4]_i_3_n_0 ,\clk_cntr[4]_i_4_n_0 ,\clk_cntr[4]_i_5_n_0 }));
  FDRE \clk_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[4]_i_1_n_6 ),
        .Q(\clk_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \clk_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[4]_i_1_n_5 ),
        .Q(\clk_cntr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \clk_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[4]_i_1_n_4 ),
        .Q(\clk_cntr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \clk_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[8]_i_1_n_7 ),
        .Q(\clk_cntr_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \clk_cntr_reg[8]_i_1 
       (.CI(\clk_cntr_reg[4]_i_1_n_0 ),
        .CO({\clk_cntr_reg[8]_i_1_n_0 ,\NLW_clk_cntr_reg[8]_i_1_CO_UNCONNECTED [2],\clk_cntr_reg[8]_i_1_n_2 ,\clk_cntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_cntr_reg[8]_i_1_O_UNCONNECTED [3],\clk_cntr_reg[8]_i_1_n_5 ,\clk_cntr_reg[8]_i_1_n_6 ,\clk_cntr_reg[8]_i_1_n_7 }),
        .S({1'b1,\clk_cntr[8]_i_2_n_0 ,\clk_cntr[8]_i_3_n_0 ,\clk_cntr[8]_i_4_n_0 }));
  FDRE \clk_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_cntr_reg[8]_i_1_n_6 ),
        .Q(\clk_cntr_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    \colpos[0]_i_1 
       (.I0(colpos),
        .I1(clk2),
        .I2(\colpos_reg_n_0_[0] ),
        .O(\colpos[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \colpos[1]_i_1 
       (.I0(\colpos_reg_n_0_[0] ),
        .I1(clk2),
        .I2(colpos),
        .I3(\colpos_reg_n_0_[1] ),
        .O(\colpos[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \colpos[2]_i_1 
       (.I0(\colpos_reg_n_0_[0] ),
        .I1(\colpos_reg_n_0_[1] ),
        .I2(clk2),
        .I3(colpos),
        .I4(\colpos_reg_n_0_[2] ),
        .O(\colpos[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \colpos_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\colpos[0]_i_1_n_0 ),
        .Q(\colpos_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \colpos_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\colpos[1]_i_1_n_0 ),
        .Q(\colpos_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \colpos_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\colpos[2]_i_1_n_0 ),
        .Q(\colpos_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \idle_count[0]_i_7 
       (.I0(\idle_count_reg_n_0_[0] ),
        .O(\idle_count[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[0]_i_2_n_7 ),
        .Q(\idle_count_reg_n_0_[0] ),
        .R(notidle));
  CARRY4 \idle_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\idle_count_reg[0]_i_2_n_0 ,\idle_count_reg[0]_i_2_n_1 ,\idle_count_reg[0]_i_2_n_2 ,\idle_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\idle_count_reg[0]_i_2_n_4 ,\idle_count_reg[0]_i_2_n_5 ,\idle_count_reg[0]_i_2_n_6 ,\idle_count_reg[0]_i_2_n_7 }),
        .S({\idle_count_reg_n_0_[3] ,\idle_count_reg_n_0_[2] ,\idle_count_reg_n_0_[1] ,\idle_count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[8]_i_1_n_5 ),
        .Q(\idle_count_reg_n_0_[10] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[8]_i_1_n_4 ),
        .Q(\idle_count_reg_n_0_[11] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[12]_i_1_n_7 ),
        .Q(\idle_count_reg_n_0_[12] ),
        .R(notidle));
  CARRY4 \idle_count_reg[12]_i_1 
       (.CI(\idle_count_reg[8]_i_1_n_0 ),
        .CO({\idle_count_reg[12]_i_1_n_0 ,\idle_count_reg[12]_i_1_n_1 ,\idle_count_reg[12]_i_1_n_2 ,\idle_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\idle_count_reg[12]_i_1_n_4 ,\idle_count_reg[12]_i_1_n_5 ,\idle_count_reg[12]_i_1_n_6 ,\idle_count_reg[12]_i_1_n_7 }),
        .S({\idle_count_reg_n_0_[15] ,\idle_count_reg_n_0_[14] ,\idle_count_reg_n_0_[13] ,\idle_count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[12]_i_1_n_6 ),
        .Q(\idle_count_reg_n_0_[13] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[12]_i_1_n_5 ),
        .Q(\idle_count_reg_n_0_[14] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[12]_i_1_n_4 ),
        .Q(\idle_count_reg_n_0_[15] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[16]_i_1_n_7 ),
        .Q(\idle_count_reg_n_0_[16] ),
        .R(notidle));
  CARRY4 \idle_count_reg[16]_i_1 
       (.CI(\idle_count_reg[12]_i_1_n_0 ),
        .CO({\idle_count_reg[16]_i_1_n_0 ,\idle_count_reg[16]_i_1_n_1 ,\idle_count_reg[16]_i_1_n_2 ,\idle_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\idle_count_reg[16]_i_1_n_4 ,\idle_count_reg[16]_i_1_n_5 ,\idle_count_reg[16]_i_1_n_6 ,\idle_count_reg[16]_i_1_n_7 }),
        .S({\idle_count_reg_n_0_[19] ,\idle_count_reg_n_0_[18] ,\idle_count_reg_n_0_[17] ,\idle_count_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[16]_i_1_n_6 ),
        .Q(\idle_count_reg_n_0_[17] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[16]_i_1_n_5 ),
        .Q(\idle_count_reg_n_0_[18] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[16]_i_1_n_4 ),
        .Q(\idle_count_reg_n_0_[19] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[0]_i_2_n_6 ),
        .Q(\idle_count_reg_n_0_[1] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[20]_i_1_n_7 ),
        .Q(\idle_count_reg_n_0_[20] ),
        .R(notidle));
  CARRY4 \idle_count_reg[20]_i_1 
       (.CI(\idle_count_reg[16]_i_1_n_0 ),
        .CO({\idle_count_reg[20]_i_1_n_0 ,\idle_count_reg[20]_i_1_n_1 ,\idle_count_reg[20]_i_1_n_2 ,\idle_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\idle_count_reg[20]_i_1_n_4 ,\idle_count_reg[20]_i_1_n_5 ,\idle_count_reg[20]_i_1_n_6 ,\idle_count_reg[20]_i_1_n_7 }),
        .S({\idle_count_reg_n_0_[23] ,\idle_count_reg_n_0_[22] ,\idle_count_reg_n_0_[21] ,\idle_count_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[20]_i_1_n_6 ),
        .Q(\idle_count_reg_n_0_[21] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[20]_i_1_n_5 ),
        .Q(\idle_count_reg_n_0_[22] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[20]_i_1_n_4 ),
        .Q(\idle_count_reg_n_0_[23] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[24]_i_1_n_7 ),
        .Q(\idle_count_reg_n_0_[24] ),
        .R(notidle));
  CARRY4 \idle_count_reg[24]_i_1 
       (.CI(\idle_count_reg[20]_i_1_n_0 ),
        .CO({\idle_count_reg[24]_i_1_n_0 ,\idle_count_reg[24]_i_1_n_1 ,\idle_count_reg[24]_i_1_n_2 ,\idle_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\idle_count_reg[24]_i_1_n_4 ,\idle_count_reg[24]_i_1_n_5 ,\idle_count_reg[24]_i_1_n_6 ,\idle_count_reg[24]_i_1_n_7 }),
        .S({\idle_count_reg_n_0_[27] ,\idle_count_reg_n_0_[26] ,\idle_count_reg_n_0_[25] ,\idle_count_reg_n_0_[24] }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[24]_i_1_n_6 ),
        .Q(\idle_count_reg_n_0_[25] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[24]_i_1_n_5 ),
        .Q(\idle_count_reg_n_0_[26] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[24]_i_1_n_4 ),
        .Q(\idle_count_reg_n_0_[27] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[28]_i_1_n_7 ),
        .Q(\idle_count_reg_n_0_[28] ),
        .R(notidle));
  CARRY4 \idle_count_reg[28]_i_1 
       (.CI(\idle_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_idle_count_reg[28]_i_1_CO_UNCONNECTED [3],\idle_count_reg[28]_i_1_n_1 ,\idle_count_reg[28]_i_1_n_2 ,\idle_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\idle_count_reg[28]_i_1_n_4 ,\idle_count_reg[28]_i_1_n_5 ,\idle_count_reg[28]_i_1_n_6 ,\idle_count_reg[28]_i_1_n_7 }),
        .S({idle,\idle_count_reg_n_0_[30] ,\idle_count_reg_n_0_[29] ,\idle_count_reg_n_0_[28] }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[28]_i_1_n_6 ),
        .Q(\idle_count_reg_n_0_[29] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[0]_i_2_n_5 ),
        .Q(\idle_count_reg_n_0_[2] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[28]_i_1_n_5 ),
        .Q(\idle_count_reg_n_0_[30] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[28]_i_1_n_4 ),
        .Q(idle),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[0]_i_2_n_4 ),
        .Q(\idle_count_reg_n_0_[3] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[4]_i_1_n_7 ),
        .Q(\idle_count_reg_n_0_[4] ),
        .R(notidle));
  CARRY4 \idle_count_reg[4]_i_1 
       (.CI(\idle_count_reg[0]_i_2_n_0 ),
        .CO({\idle_count_reg[4]_i_1_n_0 ,\idle_count_reg[4]_i_1_n_1 ,\idle_count_reg[4]_i_1_n_2 ,\idle_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\idle_count_reg[4]_i_1_n_4 ,\idle_count_reg[4]_i_1_n_5 ,\idle_count_reg[4]_i_1_n_6 ,\idle_count_reg[4]_i_1_n_7 }),
        .S({\idle_count_reg_n_0_[7] ,\idle_count_reg_n_0_[6] ,\idle_count_reg_n_0_[5] ,\idle_count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[4]_i_1_n_6 ),
        .Q(\idle_count_reg_n_0_[5] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[4]_i_1_n_5 ),
        .Q(\idle_count_reg_n_0_[6] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[4]_i_1_n_4 ),
        .Q(\idle_count_reg_n_0_[7] ),
        .R(notidle));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[8]_i_1_n_7 ),
        .Q(\idle_count_reg_n_0_[8] ),
        .R(notidle));
  CARRY4 \idle_count_reg[8]_i_1 
       (.CI(\idle_count_reg[4]_i_1_n_0 ),
        .CO({\idle_count_reg[8]_i_1_n_0 ,\idle_count_reg[8]_i_1_n_1 ,\idle_count_reg[8]_i_1_n_2 ,\idle_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\idle_count_reg[8]_i_1_n_4 ,\idle_count_reg[8]_i_1_n_5 ,\idle_count_reg[8]_i_1_n_6 ,\idle_count_reg[8]_i_1_n_7 }),
        .S({\idle_count_reg_n_0_[11] ,\idle_count_reg_n_0_[10] ,\idle_count_reg_n_0_[9] ,\idle_count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sel),
        .D(\idle_count_reg[8]_i_1_n_6 ),
        .Q(\idle_count_reg_n_0_[9] ),
        .R(notidle));
  design_1_led_shift_594_driver_0_0_delayed \input_leds_inst[0] 
       (.Q(\ssin_reg_n_0_[0] ),
        .\colpos_reg[0] (\input_leds_inst_n_0_[2] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\colpos_reg_n_0_[1] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[0] ),
        .\slv_reg0_reg[0] (\slv_reg0_reg[15] [0]),
        .\ssin_reg[1] (inact__15[1]));
  design_1_led_shift_594_driver_0_0_delayed_0 \input_leds_inst[10] 
       (.Q(\ssin_reg_n_0_[10] ),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[10] ),
        .\slv_reg0_reg[10] (\slv_reg0_reg[15] [10]),
        .\ssin_reg[11] (inact__15[11]));
  design_1_led_shift_594_driver_0_0_delayed_1 \input_leds_inst[11] 
       (.Q(\ssin_reg_n_0_[11] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[11]),
        .\slv_reg0_reg[11] (\slv_reg0_reg[15] [11]));
  design_1_led_shift_594_driver_0_0_delayed_2 \input_leds_inst[12] 
       (.CO(ser1_carry__1_n_1),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\ssin_reg_n_0_[12] ),
        .SER(SER),
        .\bitno_reg[0] (\output_leds_inst_n_0_[4] ),
        .\bitno_reg[0]_0 (\bitno_reg_n_0_[0] ),
        .\bitno_reg[1] (\bitno_reg_n_0_[1] ),
        .\bitno_reg[2] (\bitno_reg_n_0_[2] ),
        .\bitno_reg[3] (\bitno_reg_n_0_[3] ),
        .clk2(clk2),
        .\colpos_reg[0] (\input_leds_inst_n_0_[14] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\input_leds_inst_n_0_[8] ),
        .\colpos_reg[1]_0 (\output_leds_inst_n_0_[12] ),
        .\colpos_reg[1]_1 (\output_leds_inst_n_0_[8] ),
        .\colpos_reg[1]_2 (\colpos_reg_n_0_[1] ),
        .\colpos_reg[2] (\colpos_reg_n_0_[2] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[12] ),
        .\slv_reg0_reg[12] (\slv_reg0_reg[15] [12]),
        .\ssin_reg[13] (inact__15[13]));
  design_1_led_shift_594_driver_0_0_delayed_3 \input_leds_inst[13] 
       (.Q(\ssin_reg_n_0_[13] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[13]),
        .\slv_reg0_reg[13] (\slv_reg0_reg[15] [13]));
  design_1_led_shift_594_driver_0_0_delayed_4 \input_leds_inst[14] 
       (.Q(\ssin_reg_n_0_[14] ),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[14] ),
        .\slv_reg0_reg[14] (\slv_reg0_reg[15] [14]),
        .\ssin_reg[15] (inact__15[15]));
  design_1_led_shift_594_driver_0_0_delayed_5 \input_leds_inst[15] 
       (.Q(\ssin_reg_n_0_[15] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[15]),
        .\slv_reg0_reg[15] (\slv_reg0_reg[15] [15]));
  design_1_led_shift_594_driver_0_0_delayed_6 \input_leds_inst[1] 
       (.Q(\ssin_reg_n_0_[1] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[1]),
        .\slv_reg0_reg[1] (\slv_reg0_reg[15] [1]));
  design_1_led_shift_594_driver_0_0_delayed_7 \input_leds_inst[2] 
       (.Q(\ssin_reg_n_0_[2] ),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[2] ),
        .\slv_reg0_reg[2] (\slv_reg0_reg[15] [2]),
        .\ssin_reg[3] (inact__15[3]));
  design_1_led_shift_594_driver_0_0_delayed_8 \input_leds_inst[3] 
       (.Q(\ssin_reg_n_0_[3] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[3]),
        .\slv_reg0_reg[3] (\slv_reg0_reg[15] [3]));
  design_1_led_shift_594_driver_0_0_delayed_9 \input_leds_inst[4] 
       (.Q(\ssin_reg_n_0_[4] ),
        .\colpos_reg[0] (\input_leds_inst_n_0_[6] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\colpos_reg_n_0_[1] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[4] ),
        .\slv_reg0_reg[4] (\slv_reg0_reg[15] [4]),
        .\ssin_reg[5] (inact__15[5]));
  design_1_led_shift_594_driver_0_0_delayed_10 \input_leds_inst[5] 
       (.Q(\ssin_reg_n_0_[5] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[5]),
        .\slv_reg0_reg[5] (\slv_reg0_reg[15] [5]));
  design_1_led_shift_594_driver_0_0_delayed_11 \input_leds_inst[6] 
       (.Q(\ssin_reg_n_0_[6] ),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[6] ),
        .\slv_reg0_reg[6] (\slv_reg0_reg[15] [6]),
        .\ssin_reg[7] (inact__15[7]));
  design_1_led_shift_594_driver_0_0_delayed_12 \input_leds_inst[7] 
       (.Q(\ssin_reg_n_0_[7] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[7]),
        .\slv_reg0_reg[7] (\slv_reg0_reg[15] [7]));
  design_1_led_shift_594_driver_0_0_delayed_13 \input_leds_inst[8] 
       (.Q(\ssin_reg_n_0_[8] ),
        .\colpos_reg[0] (\input_leds_inst_n_0_[10] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\colpos_reg_n_0_[1] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\input_leds_inst_n_0_[8] ),
        .\slv_reg0_reg[8] (\slv_reg0_reg[15] [8]),
        .\ssin_reg[9] (inact__15[9]));
  design_1_led_shift_594_driver_0_0_delayed_14 \input_leds_inst[9] 
       (.Q(\ssin_reg_n_0_[9] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(inact__15[9]),
        .\slv_reg0_reg[9] (\slv_reg0_reg[15] [9]));
  LUT1 #(
    .INIT(2'h1)) 
    \ledclk_c[0]_i_2 
       (.I0(ledclk_c_reg[0]),
        .O(\ledclk_c[0]_i_2_n_0 ));
  FDRE \ledclk_c_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[0]_i_1_n_7 ),
        .Q(ledclk_c_reg[0]),
        .R(1'b0));
  CARRY4 \ledclk_c_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ledclk_c_reg[0]_i_1_n_0 ,\ledclk_c_reg[0]_i_1_n_1 ,\ledclk_c_reg[0]_i_1_n_2 ,\ledclk_c_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ledclk_c_reg[0]_i_1_n_4 ,\ledclk_c_reg[0]_i_1_n_5 ,\ledclk_c_reg[0]_i_1_n_6 ,\ledclk_c_reg[0]_i_1_n_7 }),
        .S({ledclk_c_reg[3:1],\ledclk_c[0]_i_2_n_0 }));
  FDRE \ledclk_c_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[8]_i_1_n_5 ),
        .Q(ledclk_c_reg[10]),
        .R(1'b0));
  FDRE \ledclk_c_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[8]_i_1_n_4 ),
        .Q(ledclk_c_reg[11]),
        .R(1'b0));
  FDRE \ledclk_c_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[12]_i_1_n_7 ),
        .Q(ledclk_c_reg[12]),
        .R(1'b0));
  CARRY4 \ledclk_c_reg[12]_i_1 
       (.CI(\ledclk_c_reg[8]_i_1_n_0 ),
        .CO({\ledclk_c_reg[12]_i_1_n_0 ,\ledclk_c_reg[12]_i_1_n_1 ,\ledclk_c_reg[12]_i_1_n_2 ,\ledclk_c_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ledclk_c_reg[12]_i_1_n_4 ,\ledclk_c_reg[12]_i_1_n_5 ,\ledclk_c_reg[12]_i_1_n_6 ,\ledclk_c_reg[12]_i_1_n_7 }),
        .S(ledclk_c_reg[15:12]));
  FDRE \ledclk_c_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[12]_i_1_n_6 ),
        .Q(ledclk_c_reg[13]),
        .R(1'b0));
  FDRE \ledclk_c_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[12]_i_1_n_5 ),
        .Q(ledclk_c_reg[14]),
        .R(1'b0));
  FDRE \ledclk_c_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[12]_i_1_n_4 ),
        .Q(ledclk_c_reg[15]),
        .R(1'b0));
  FDRE \ledclk_c_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[16]_i_1_n_7 ),
        .Q(ledclk_c_reg[16]),
        .R(1'b0));
  CARRY4 \ledclk_c_reg[16]_i_1 
       (.CI(\ledclk_c_reg[12]_i_1_n_0 ),
        .CO({\ledclk_c_reg[16]_i_1_n_0 ,\ledclk_c_reg[16]_i_1_n_1 ,\ledclk_c_reg[16]_i_1_n_2 ,\ledclk_c_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ledclk_c_reg[16]_i_1_n_4 ,\ledclk_c_reg[16]_i_1_n_5 ,\ledclk_c_reg[16]_i_1_n_6 ,\ledclk_c_reg[16]_i_1_n_7 }),
        .S(ledclk_c_reg[19:16]));
  FDRE \ledclk_c_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[16]_i_1_n_6 ),
        .Q(ledclk_c_reg[17]),
        .R(1'b0));
  FDRE \ledclk_c_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[16]_i_1_n_5 ),
        .Q(ledclk_c_reg[18]),
        .R(1'b0));
  FDRE \ledclk_c_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[16]_i_1_n_4 ),
        .Q(ledclk_c_reg[19]),
        .R(1'b0));
  FDRE \ledclk_c_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[0]_i_1_n_6 ),
        .Q(ledclk_c_reg[1]),
        .R(1'b0));
  FDRE \ledclk_c_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[20]_i_1_n_7 ),
        .Q(ledclk_c_reg[20]),
        .R(1'b0));
  CARRY4 \ledclk_c_reg[20]_i_1 
       (.CI(\ledclk_c_reg[16]_i_1_n_0 ),
        .CO({\NLW_ledclk_c_reg[20]_i_1_CO_UNCONNECTED [3:1],\ledclk_c_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ledclk_c_reg[20]_i_1_O_UNCONNECTED [3:2],\ledclk_c_reg[20]_i_1_n_6 ,\ledclk_c_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,ledclk_c_reg[21:20]}));
  FDRE \ledclk_c_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[20]_i_1_n_6 ),
        .Q(ledclk_c_reg[21]),
        .R(1'b0));
  FDRE \ledclk_c_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[0]_i_1_n_5 ),
        .Q(ledclk_c_reg[2]),
        .R(1'b0));
  FDRE \ledclk_c_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[0]_i_1_n_4 ),
        .Q(ledclk_c_reg[3]),
        .R(1'b0));
  FDRE \ledclk_c_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[4]_i_1_n_7 ),
        .Q(ledclk_c_reg[4]),
        .R(1'b0));
  CARRY4 \ledclk_c_reg[4]_i_1 
       (.CI(\ledclk_c_reg[0]_i_1_n_0 ),
        .CO({\ledclk_c_reg[4]_i_1_n_0 ,\ledclk_c_reg[4]_i_1_n_1 ,\ledclk_c_reg[4]_i_1_n_2 ,\ledclk_c_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ledclk_c_reg[4]_i_1_n_4 ,\ledclk_c_reg[4]_i_1_n_5 ,\ledclk_c_reg[4]_i_1_n_6 ,\ledclk_c_reg[4]_i_1_n_7 }),
        .S(ledclk_c_reg[7:4]));
  FDRE \ledclk_c_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[4]_i_1_n_6 ),
        .Q(ledclk_c_reg[5]),
        .R(1'b0));
  FDRE \ledclk_c_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[4]_i_1_n_5 ),
        .Q(ledclk_c_reg[6]),
        .R(1'b0));
  FDRE \ledclk_c_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[4]_i_1_n_4 ),
        .Q(ledclk_c_reg[7]),
        .R(1'b0));
  FDRE \ledclk_c_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[8]_i_1_n_7 ),
        .Q(ledclk_c_reg[8]),
        .R(1'b0));
  CARRY4 \ledclk_c_reg[8]_i_1 
       (.CI(\ledclk_c_reg[4]_i_1_n_0 ),
        .CO({\ledclk_c_reg[8]_i_1_n_0 ,\ledclk_c_reg[8]_i_1_n_1 ,\ledclk_c_reg[8]_i_1_n_2 ,\ledclk_c_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ledclk_c_reg[8]_i_1_n_4 ,\ledclk_c_reg[8]_i_1_n_5 ,\ledclk_c_reg[8]_i_1_n_6 ,\ledclk_c_reg[8]_i_1_n_7 }),
        .S(ledclk_c_reg[11:8]));
  FDRE \ledclk_c_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ledclk_c_reg[8]_i_1_n_6 ),
        .Q(ledclk_c_reg[9]),
        .R(1'b0));
  design_1_led_shift_594_driver_0_0_delayed_15 \output_leds_inst[0] 
       (.Q(Q[0]),
        .\colpos_reg[0] (\output_leds_inst_n_0_[2] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\colpos_reg_n_0_[1] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[0] ),
        .\ssout_reg[0] (ssout[0]),
        .\ssout_reg[1] (outact__15[1]));
  design_1_led_shift_594_driver_0_0_delayed_16 \output_leds_inst[10] 
       (.Q(Q[10]),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[10] ),
        .\ssout_reg[10] (ssout[10]),
        .\ssout_reg[11] (outact__15[11]));
  design_1_led_shift_594_driver_0_0_delayed_17 \output_leds_inst[11] 
       (.Q(Q[11]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[11]),
        .\ssout_reg[11] (ssout[11]));
  design_1_led_shift_594_driver_0_0_delayed_18 \output_leds_inst[12] 
       (.Q(Q[12]),
        .\colpos_reg[0] (\output_leds_inst_n_0_[14] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\colpos_reg_n_0_[1] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[12] ),
        .\ssout_reg[12] (ssout[12]),
        .\ssout_reg[13] (outact__15[13]));
  design_1_led_shift_594_driver_0_0_delayed_19 \output_leds_inst[13] 
       (.Q(Q[13]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[13]),
        .\ssout_reg[13] (ssout[13]));
  design_1_led_shift_594_driver_0_0_delayed_20 \output_leds_inst[14] 
       (.Q(Q[14]),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[14] ),
        .\ssout_reg[14] (ssout[14]),
        .\ssout_reg[15] (outact__15[15]));
  design_1_led_shift_594_driver_0_0_delayed_21 \output_leds_inst[15] 
       (.Q(Q[15]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[15]),
        .\ssout_reg[15] (ssout[15]));
  design_1_led_shift_594_driver_0_0_delayed_22 \output_leds_inst[1] 
       (.Q(Q[1]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .ledclk_c_reg(ledclk_c_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[1]),
        .\ssout_reg[1] (ssout[1]));
  design_1_led_shift_594_driver_0_0_delayed_23 \output_leds_inst[2] 
       (.Q(Q[2]),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[2] ),
        .\ssout_reg[2] (ssout[2]),
        .\ssout_reg[3] (outact__15[3]));
  design_1_led_shift_594_driver_0_0_delayed_24 \output_leds_inst[3] 
       (.Q(Q[3]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[3]),
        .\ssout_reg[3] (ssout[3]));
  design_1_led_shift_594_driver_0_0_delayed_25 \output_leds_inst[4] 
       (.Q(Q[4]),
        .\bitno_reg[0] (\bitno_reg_n_0_[0] ),
        .\colpos_reg[0] (\output_leds_inst_n_0_[6] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\output_leds_inst_n_0_[0] ),
        .\colpos_reg[1]_0 (\input_leds_inst_n_0_[4] ),
        .\colpos_reg[1]_1 (\input_leds_inst_n_0_[0] ),
        .\colpos_reg[1]_2 (\colpos_reg_n_0_[1] ),
        .\colpos_reg[2] (\colpos_reg_n_0_[2] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[4] ),
        .\ssout_reg[4] (ssout[4]),
        .\ssout_reg[5] (outact__15[5]));
  design_1_led_shift_594_driver_0_0_delayed_26 \output_leds_inst[5] 
       (.Q(Q[5]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[5]),
        .\ssout_reg[5] (ssout[5]));
  design_1_led_shift_594_driver_0_0_delayed_27 \output_leds_inst[6] 
       (.Q(Q[6]),
        .\colpos_reg[0] (\colpos_reg_n_0_[0] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[6] ),
        .\ssout_reg[6] (ssout[6]),
        .\ssout_reg[7] (outact__15[7]));
  design_1_led_shift_594_driver_0_0_delayed_28 \output_leds_inst[7] 
       (.Q(Q[7]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[7]),
        .\ssout_reg[7] (ssout[7]));
  design_1_led_shift_594_driver_0_0_delayed_29 \output_leds_inst[8] 
       (.Q(Q[8]),
        .\colpos_reg[0] (\output_leds_inst_n_0_[10] ),
        .\colpos_reg[0]_0 (\colpos_reg_n_0_[0] ),
        .\colpos_reg[1] (\colpos_reg_n_0_[1] ),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(\output_leds_inst_n_0_[8] ),
        .\ssout_reg[8] (ssout[8]),
        .\ssout_reg[9] (outact__15[9]));
  design_1_led_shift_594_driver_0_0_delayed_30 \output_leds_inst[9] 
       (.Q(Q[9]),
        .idle(idle),
        .ledclk__20(ledclk__20),
        .s00_axi_aclk(s00_axi_aclk),
        .ser_reg(outact__15[9]),
        .\ssout_reg[9] (ssout[9]));
  LUT4 #(
    .INIT(16'hDF88)) 
    rck_i_1
       (.I0(clk2),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(colpos),
        .I3(RCK),
        .O(rck_i_1_n_0));
  FDRE rck_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rck_i_1_n_0),
        .Q(RCK),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF57AA00)) 
    sck_i_1
       (.I0(clk2),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(colpos),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(SCK),
        .O(sck_i_1_n_0));
  FDRE sck_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sck_i_1_n_0),
        .Q(SCK),
        .R(1'b0));
  CARRY4 ser1_carry
       (.CI(1'b0),
        .CO({ser1_carry_n_0,ser1_carry_n_1,ser1_carry_n_2,ser1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ser1_carry_O_UNCONNECTED[3:0]),
        .S({ser1_carry_i_1_n_0,ser1_carry_i_2_n_0,ser1_carry_i_3_n_0,ser1_carry_i_4_n_0}));
  CARRY4 ser1_carry__0
       (.CI(ser1_carry_n_0),
        .CO({ser1_carry__0_n_0,ser1_carry__0_n_1,ser1_carry__0_n_2,ser1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ser1_carry__0_O_UNCONNECTED[3:0]),
        .S({ser1_carry__0_i_1_n_0,ser1_carry__0_i_2_n_0,ser1_carry__0_i_3_n_0,ser1_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry__0_i_1
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry__0_i_2
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry__0_i_3
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry__0_i_4
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry__0_i_4_n_0));
  CARRY4 ser1_carry__1
       (.CI(ser1_carry__0_n_0),
        .CO({NLW_ser1_carry__1_CO_UNCONNECTED[3],ser1_carry__1_n_1,ser1_carry__1_n_2,ser1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ser1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,ser1_carry__1_i_1_n_0,ser1_carry__1_i_2_n_0,ser1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry__1_i_1
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry__1_i_2
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry__1_i_3
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry_i_1
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ser1_carry_i_2
       (.I0(\bitno_reg_n_0_[2] ),
        .I1(\bitno_reg_n_0_[0] ),
        .I2(\bitno_reg_n_0_[1] ),
        .I3(\bitno_reg_n_0_[3] ),
        .O(ser1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h5556)) 
    ser1_carry_i_3
       (.I0(\bitno_reg_n_0_[3] ),
        .I1(\bitno_reg_n_0_[1] ),
        .I2(\bitno_reg_n_0_[0] ),
        .I3(\bitno_reg_n_0_[2] ),
        .O(ser1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h4100002800824100)) 
    ser1_carry_i_4
       (.I0(\colpos_reg_n_0_[0] ),
        .I1(\colpos_reg_n_0_[2] ),
        .I2(\bitno_reg_n_0_[2] ),
        .I3(\bitno_reg_n_0_[0] ),
        .I4(\bitno_reg_n_0_[1] ),
        .I5(\colpos_reg_n_0_[1] ),
        .O(ser1_carry_i_4_n_0));
  FDRE ser_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\input_leds_inst_n_0_[12] ),
        .Q(SER),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h60)) 
    \ssbitno[0]_i_1 
       (.I0(ssbitno[0]),
        .I1(ssclk2),
        .I2(idle),
        .O(\ssbitno[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \ssbitno[1]_i_1 
       (.I0(ssbitno[1]),
        .I1(ssclk2),
        .I2(ssbitno[0]),
        .I3(idle),
        .O(\ssbitno[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \ssbitno[2]_i_1 
       (.I0(ssbitno[2]),
        .I1(ssclk2),
        .I2(ssbitno[1]),
        .I3(ssbitno[0]),
        .I4(idle),
        .O(\ssbitno[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ssbitno_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssbitno[0]_i_1_n_0 ),
        .Q(ssbitno[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssbitno_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssbitno[1]_i_1_n_0 ),
        .Q(ssbitno[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ssbitno_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssbitno[2]_i_1_n_0 ),
        .Q(ssbitno[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[0]_i_2 
       (.I0(\ssclk_cntr_reg_n_0_[0] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[0]_i_3 
       (.I0(\ssclk_cntr_reg_n_0_[3] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[0]_i_4 
       (.I0(\ssclk_cntr_reg_n_0_[2] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[0]_i_5 
       (.I0(\ssclk_cntr_reg_n_0_[1] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ssclk_cntr[0]_i_6 
       (.I0(\ssclk_cntr_reg_n_0_[0] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[12]_i_2 
       (.I0(\ssclk_cntr_reg_n_0_[15] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[12]_i_3 
       (.I0(\ssclk_cntr_reg_n_0_[14] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[12]_i_4 
       (.I0(\ssclk_cntr_reg_n_0_[13] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[12]_i_5 
       (.I0(\ssclk_cntr_reg_n_0_[12] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[16]_i_2 
       (.I0(\ssclk_cntr_reg_n_0_[19] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[16]_i_3 
       (.I0(\ssclk_cntr_reg_n_0_[18] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[16]_i_4 
       (.I0(\ssclk_cntr_reg_n_0_[17] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[16]_i_5 
       (.I0(\ssclk_cntr_reg_n_0_[16] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[20]_i_2 
       (.I0(\ssclk_cntr_reg_n_0_[22] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[20]_i_3 
       (.I0(\ssclk_cntr_reg_n_0_[21] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[20]_i_4 
       (.I0(\ssclk_cntr_reg_n_0_[20] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[4]_i_2 
       (.I0(\ssclk_cntr_reg_n_0_[7] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[4]_i_3 
       (.I0(\ssclk_cntr_reg_n_0_[6] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[4]_i_4 
       (.I0(\ssclk_cntr_reg_n_0_[5] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[4]_i_5 
       (.I0(\ssclk_cntr_reg_n_0_[4] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[8]_i_2 
       (.I0(\ssclk_cntr_reg_n_0_[11] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[8]_i_3 
       (.I0(\ssclk_cntr_reg_n_0_[10] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[8]_i_4 
       (.I0(\ssclk_cntr_reg_n_0_[9] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ssclk_cntr[8]_i_5 
       (.I0(\ssclk_cntr_reg_n_0_[8] ),
        .I1(ssclk2),
        .O(\ssclk_cntr[8]_i_5_n_0 ));
  FDRE \ssclk_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[0]_i_1_n_7 ),
        .Q(\ssclk_cntr_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \ssclk_cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ssclk_cntr_reg[0]_i_1_n_0 ,\ssclk_cntr_reg[0]_i_1_n_1 ,\ssclk_cntr_reg[0]_i_1_n_2 ,\ssclk_cntr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\ssclk_cntr[0]_i_2_n_0 }),
        .O({\ssclk_cntr_reg[0]_i_1_n_4 ,\ssclk_cntr_reg[0]_i_1_n_5 ,\ssclk_cntr_reg[0]_i_1_n_6 ,\ssclk_cntr_reg[0]_i_1_n_7 }),
        .S({\ssclk_cntr[0]_i_3_n_0 ,\ssclk_cntr[0]_i_4_n_0 ,\ssclk_cntr[0]_i_5_n_0 ,\ssclk_cntr[0]_i_6_n_0 }));
  FDRE \ssclk_cntr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[8]_i_1_n_5 ),
        .Q(\ssclk_cntr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[8]_i_1_n_4 ),
        .Q(\ssclk_cntr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[12]_i_1_n_7 ),
        .Q(\ssclk_cntr_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \ssclk_cntr_reg[12]_i_1 
       (.CI(\ssclk_cntr_reg[8]_i_1_n_0 ),
        .CO({\ssclk_cntr_reg[12]_i_1_n_0 ,\ssclk_cntr_reg[12]_i_1_n_1 ,\ssclk_cntr_reg[12]_i_1_n_2 ,\ssclk_cntr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ssclk_cntr_reg[12]_i_1_n_4 ,\ssclk_cntr_reg[12]_i_1_n_5 ,\ssclk_cntr_reg[12]_i_1_n_6 ,\ssclk_cntr_reg[12]_i_1_n_7 }),
        .S({\ssclk_cntr[12]_i_2_n_0 ,\ssclk_cntr[12]_i_3_n_0 ,\ssclk_cntr[12]_i_4_n_0 ,\ssclk_cntr[12]_i_5_n_0 }));
  FDRE \ssclk_cntr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[12]_i_1_n_6 ),
        .Q(\ssclk_cntr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[12]_i_1_n_5 ),
        .Q(\ssclk_cntr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[12]_i_1_n_4 ),
        .Q(\ssclk_cntr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[16]_i_1_n_7 ),
        .Q(\ssclk_cntr_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \ssclk_cntr_reg[16]_i_1 
       (.CI(\ssclk_cntr_reg[12]_i_1_n_0 ),
        .CO({\ssclk_cntr_reg[16]_i_1_n_0 ,\ssclk_cntr_reg[16]_i_1_n_1 ,\ssclk_cntr_reg[16]_i_1_n_2 ,\ssclk_cntr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ssclk_cntr_reg[16]_i_1_n_4 ,\ssclk_cntr_reg[16]_i_1_n_5 ,\ssclk_cntr_reg[16]_i_1_n_6 ,\ssclk_cntr_reg[16]_i_1_n_7 }),
        .S({\ssclk_cntr[16]_i_2_n_0 ,\ssclk_cntr[16]_i_3_n_0 ,\ssclk_cntr[16]_i_4_n_0 ,\ssclk_cntr[16]_i_5_n_0 }));
  FDRE \ssclk_cntr_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[16]_i_1_n_6 ),
        .Q(\ssclk_cntr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[16]_i_1_n_5 ),
        .Q(\ssclk_cntr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[16]_i_1_n_4 ),
        .Q(\ssclk_cntr_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[0]_i_1_n_6 ),
        .Q(\ssclk_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[20]_i_1_n_7 ),
        .Q(\ssclk_cntr_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \ssclk_cntr_reg[20]_i_1 
       (.CI(\ssclk_cntr_reg[16]_i_1_n_0 ),
        .CO({\ssclk_cntr_reg[20]_i_1_n_0 ,\NLW_ssclk_cntr_reg[20]_i_1_CO_UNCONNECTED [2],\ssclk_cntr_reg[20]_i_1_n_2 ,\ssclk_cntr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ssclk_cntr_reg[20]_i_1_O_UNCONNECTED [3],\ssclk_cntr_reg[20]_i_1_n_5 ,\ssclk_cntr_reg[20]_i_1_n_6 ,\ssclk_cntr_reg[20]_i_1_n_7 }),
        .S({1'b1,\ssclk_cntr[20]_i_2_n_0 ,\ssclk_cntr[20]_i_3_n_0 ,\ssclk_cntr[20]_i_4_n_0 }));
  FDRE \ssclk_cntr_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[20]_i_1_n_6 ),
        .Q(\ssclk_cntr_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[20]_i_1_n_5 ),
        .Q(\ssclk_cntr_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[20]_i_1_n_0 ),
        .Q(ssclk2),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[0]_i_1_n_5 ),
        .Q(\ssclk_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[0]_i_1_n_4 ),
        .Q(\ssclk_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[4]_i_1_n_7 ),
        .Q(\ssclk_cntr_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \ssclk_cntr_reg[4]_i_1 
       (.CI(\ssclk_cntr_reg[0]_i_1_n_0 ),
        .CO({\ssclk_cntr_reg[4]_i_1_n_0 ,\ssclk_cntr_reg[4]_i_1_n_1 ,\ssclk_cntr_reg[4]_i_1_n_2 ,\ssclk_cntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ssclk_cntr_reg[4]_i_1_n_4 ,\ssclk_cntr_reg[4]_i_1_n_5 ,\ssclk_cntr_reg[4]_i_1_n_6 ,\ssclk_cntr_reg[4]_i_1_n_7 }),
        .S({\ssclk_cntr[4]_i_2_n_0 ,\ssclk_cntr[4]_i_3_n_0 ,\ssclk_cntr[4]_i_4_n_0 ,\ssclk_cntr[4]_i_5_n_0 }));
  FDRE \ssclk_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[4]_i_1_n_6 ),
        .Q(\ssclk_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[4]_i_1_n_5 ),
        .Q(\ssclk_cntr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[4]_i_1_n_4 ),
        .Q(\ssclk_cntr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ssclk_cntr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[8]_i_1_n_7 ),
        .Q(\ssclk_cntr_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \ssclk_cntr_reg[8]_i_1 
       (.CI(\ssclk_cntr_reg[4]_i_1_n_0 ),
        .CO({\ssclk_cntr_reg[8]_i_1_n_0 ,\ssclk_cntr_reg[8]_i_1_n_1 ,\ssclk_cntr_reg[8]_i_1_n_2 ,\ssclk_cntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ssclk_cntr_reg[8]_i_1_n_4 ,\ssclk_cntr_reg[8]_i_1_n_5 ,\ssclk_cntr_reg[8]_i_1_n_6 ,\ssclk_cntr_reg[8]_i_1_n_7 }),
        .S({\ssclk_cntr[8]_i_2_n_0 ,\ssclk_cntr[8]_i_3_n_0 ,\ssclk_cntr[8]_i_4_n_0 ,\ssclk_cntr[8]_i_5_n_0 }));
  FDRE \ssclk_cntr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\ssclk_cntr_reg[8]_i_1_n_6 ),
        .Q(\ssclk_cntr_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \ssin[10]_i_1 
       (.I0(ssclk2),
        .I1(ssbitno[1]),
        .I2(ssbitno[0]),
        .I3(ssbitno[2]),
        .O(ssin[2]));
  LUT4 #(
    .INIT(16'h0200)) 
    \ssin[11]_i_1 
       (.I0(ssclk2),
        .I1(ssbitno[1]),
        .I2(ssbitno[0]),
        .I3(ssbitno[2]),
        .O(ssin[3]));
  LUT4 #(
    .INIT(16'h0080)) 
    \ssin[12]_i_1 
       (.I0(ssclk2),
        .I1(ssbitno[1]),
        .I2(ssbitno[0]),
        .I3(ssbitno[2]),
        .O(ssin[4]));
  LUT4 #(
    .INIT(16'h0020)) 
    \ssin[13]_i_1 
       (.I0(ssclk2),
        .I1(ssbitno[0]),
        .I2(ssbitno[1]),
        .I3(ssbitno[2]),
        .O(ssin[5]));
  LUT4 #(
    .INIT(16'h0020)) 
    \ssin[14]_i_1 
       (.I0(ssclk2),
        .I1(ssbitno[1]),
        .I2(ssbitno[0]),
        .I3(ssbitno[2]),
        .O(ssin[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \ssin[15]_i_1 
       (.I0(idle),
        .O(sel));
  LUT4 #(
    .INIT(16'h0002)) 
    \ssin[15]_i_2 
       (.I0(ssclk2),
        .I1(ssbitno[1]),
        .I2(ssbitno[0]),
        .I3(ssbitno[2]),
        .O(ssin[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \ssin[15]_i_3 
       (.I0(\ssin_reg[15]_i_4_n_0 ),
        .O(\ssin[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssin[15]_i_5 
       (.I0(\ssin_reg_n_0_[12] ),
        .I1(\ssin_reg_n_0_[13] ),
        .I2(ssbitno[1]),
        .I3(\ssin_reg_n_0_[14] ),
        .I4(ssbitno[0]),
        .I5(\ssin_reg_n_0_[15] ),
        .O(\ssin[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssin[15]_i_6 
       (.I0(\ssin_reg_n_0_[8] ),
        .I1(\ssin_reg_n_0_[9] ),
        .I2(ssbitno[1]),
        .I3(\ssin_reg_n_0_[10] ),
        .I4(ssbitno[0]),
        .I5(\ssin_reg_n_0_[11] ),
        .O(\ssin[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ssin[7]_i_1 
       (.I0(\ssin_reg[7]_i_2_n_0 ),
        .O(\ssin[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssin[7]_i_3 
       (.I0(\ssin_reg_n_0_[4] ),
        .I1(\ssin_reg_n_0_[5] ),
        .I2(ssbitno[1]),
        .I3(\ssin_reg_n_0_[6] ),
        .I4(ssbitno[0]),
        .I5(\ssin_reg_n_0_[7] ),
        .O(\ssin[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssin[7]_i_4 
       (.I0(\ssin_reg_n_0_[0] ),
        .I1(\ssin_reg_n_0_[1] ),
        .I2(ssbitno[1]),
        .I3(\ssin_reg_n_0_[2] ),
        .I4(ssbitno[0]),
        .I5(\ssin_reg_n_0_[3] ),
        .O(\ssin[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ssin[8]_i_1 
       (.I0(ssclk2),
        .I1(ssbitno[1]),
        .I2(ssbitno[0]),
        .I3(ssbitno[2]),
        .O(ssin[0]));
  LUT4 #(
    .INIT(16'h2000)) 
    \ssin[9]_i_1 
       (.I0(ssclk2),
        .I1(ssbitno[0]),
        .I2(ssbitno[1]),
        .I3(ssbitno[2]),
        .O(ssin[1]));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ssin[0]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[0] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ssin[2]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[10] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ssin[3]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[11] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ssin[4]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[12] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ssin[5]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[13] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ssin[6]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[14] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ssin[7]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[15] ),
        .R(sel));
  MUXF7 \ssin_reg[15]_i_4 
       (.I0(\ssin[15]_i_5_n_0 ),
        .I1(\ssin[15]_i_6_n_0 ),
        .O(\ssin_reg[15]_i_4_n_0 ),
        .S(ssbitno[2]));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ssin[1]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[1] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ssin[2]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[2] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ssin[3]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[3] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ssin[4]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[4] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ssin[5]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[5] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ssin[6]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[6] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ssin[7]),
        .D(\ssin[7]_i_1_n_0 ),
        .Q(\ssin_reg_n_0_[7] ),
        .R(sel));
  MUXF7 \ssin_reg[7]_i_2 
       (.I0(\ssin[7]_i_3_n_0 ),
        .I1(\ssin[7]_i_4_n_0 ),
        .O(\ssin_reg[7]_i_2_n_0 ),
        .S(ssbitno[2]));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ssin[0]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[8] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssin_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ssin[1]),
        .D(\ssin[15]_i_3_n_0 ),
        .Q(\ssin_reg_n_0_[9] ),
        .R(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \ssout[15]_i_1 
       (.I0(\ssout_reg[15]_i_2_n_0 ),
        .O(\ssout[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssout[15]_i_3 
       (.I0(ssout[12]),
        .I1(ssout[13]),
        .I2(ssbitno[1]),
        .I3(ssout[14]),
        .I4(ssbitno[0]),
        .I5(ssout[15]),
        .O(\ssout[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssout[15]_i_4 
       (.I0(ssout[8]),
        .I1(ssout[9]),
        .I2(ssbitno[1]),
        .I3(ssout[10]),
        .I4(ssbitno[0]),
        .I5(ssout[11]),
        .O(\ssout[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ssout[7]_i_1 
       (.I0(\ssout_reg[7]_i_2_n_0 ),
        .O(\ssout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssout[7]_i_3 
       (.I0(ssout[4]),
        .I1(ssout[5]),
        .I2(ssbitno[1]),
        .I3(ssout[6]),
        .I4(ssbitno[0]),
        .I5(ssout[7]),
        .O(\ssout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ssout[7]_i_4 
       (.I0(ssout[0]),
        .I1(ssout[1]),
        .I2(ssbitno[1]),
        .I3(ssout[2]),
        .I4(ssbitno[0]),
        .I5(ssout[3]),
        .O(\ssout[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ssin[0]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[0]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ssin[2]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[10]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ssin[3]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[11]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ssin[4]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[12]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ssin[5]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[13]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ssin[6]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[14]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ssin[7]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[15]),
        .R(sel));
  MUXF7 \ssout_reg[15]_i_2 
       (.I0(\ssout[15]_i_3_n_0 ),
        .I1(\ssout[15]_i_4_n_0 ),
        .O(\ssout_reg[15]_i_2_n_0 ),
        .S(ssbitno[2]));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ssin[1]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[1]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ssin[2]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[2]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ssin[3]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[3]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ssin[4]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[4]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ssin[5]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[5]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ssin[6]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[6]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ssin[7]),
        .D(\ssout[7]_i_1_n_0 ),
        .Q(ssout[7]),
        .R(sel));
  MUXF7 \ssout_reg[7]_i_2 
       (.I0(\ssout[7]_i_3_n_0 ),
        .I1(\ssout[7]_i_4_n_0 ),
        .O(\ssout_reg[7]_i_2_n_0 ),
        .S(ssbitno[2]));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ssin[0]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[8]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ssout_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ssin[1]),
        .D(\ssout[15]_i_1_n_0 ),
        .Q(ssout[9]),
        .R(sel));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
