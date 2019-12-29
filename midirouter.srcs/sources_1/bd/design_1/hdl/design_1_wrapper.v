//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Sat Dec 28 20:41:14 2019
//Host        : debian running 64-bit Debian GNU/Linux 9.11 (stretch)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (RCK_0,
    SCK_0,
    SER_0,
    reset,
    rx_0,
    rx_1,
    rx_10,
    rx_11,
    rx_12,
    rx_13,
    rx_14,
    rx_15,
    rx_2,
    rx_3,
    rx_4,
    rx_5,
    rx_6,
    rx_7,
    rx_8,
    rx_9,
    sys_clock,
    tx_0,
    tx_1,
    tx_10,
    tx_11,
    tx_12,
    tx_13,
    tx_14,
    tx_15,
    tx_2,
    tx_3,
    tx_4,
    tx_5,
    tx_6,
    tx_7,
    tx_8,
    tx_9,
    usb_uart_rxd,
    usb_uart_txd);
  output RCK_0;
  output SCK_0;
  output SER_0;
  input reset;
  input rx_0;
  input rx_1;
  input rx_10;
  input rx_11;
  input rx_12;
  input rx_13;
  input rx_14;
  input rx_15;
  input rx_2;
  input rx_3;
  input rx_4;
  input rx_5;
  input rx_6;
  input rx_7;
  input rx_8;
  input rx_9;
  input sys_clock;
  output tx_0;
  output tx_1;
  output tx_10;
  output tx_11;
  output tx_12;
  output tx_13;
  output tx_14;
  output tx_15;
  output tx_2;
  output tx_3;
  output tx_4;
  output tx_5;
  output tx_6;
  output tx_7;
  output tx_8;
  output tx_9;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire RCK_0;
  wire SCK_0;
  wire SER_0;
  wire reset;
  wire rx_0;
  wire rx_1;
  wire rx_10;
  wire rx_11;
  wire rx_12;
  wire rx_13;
  wire rx_14;
  wire rx_15;
  wire rx_2;
  wire rx_3;
  wire rx_4;
  wire rx_5;
  wire rx_6;
  wire rx_7;
  wire rx_8;
  wire rx_9;
  wire sys_clock;
  wire tx_0;
  wire tx_1;
  wire tx_10;
  wire tx_11;
  wire tx_12;
  wire tx_13;
  wire tx_14;
  wire tx_15;
  wire tx_2;
  wire tx_3;
  wire tx_4;
  wire tx_5;
  wire tx_6;
  wire tx_7;
  wire tx_8;
  wire tx_9;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.RCK_0(RCK_0),
        .SCK_0(SCK_0),
        .SER_0(SER_0),
        .reset(reset),
        .rx_0(rx_0),
        .rx_1(rx_1),
        .rx_10(rx_10),
        .rx_11(rx_11),
        .rx_12(rx_12),
        .rx_13(rx_13),
        .rx_14(rx_14),
        .rx_15(rx_15),
        .rx_2(rx_2),
        .rx_3(rx_3),
        .rx_4(rx_4),
        .rx_5(rx_5),
        .rx_6(rx_6),
        .rx_7(rx_7),
        .rx_8(rx_8),
        .rx_9(rx_9),
        .sys_clock(sys_clock),
        .tx_0(tx_0),
        .tx_1(tx_1),
        .tx_10(tx_10),
        .tx_11(tx_11),
        .tx_12(tx_12),
        .tx_13(tx_13),
        .tx_14(tx_14),
        .tx_15(tx_15),
        .tx_2(tx_2),
        .tx_3(tx_3),
        .tx_4(tx_4),
        .tx_5(tx_5),
        .tx_6(tx_6),
        .tx_7(tx_7),
        .tx_8(tx_8),
        .tx_9(tx_9),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
