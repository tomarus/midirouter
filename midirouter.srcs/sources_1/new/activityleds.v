`timescale 1ns / 1ps
//
// 74HC594 Led Driver with Screensaver
//
// Create Date: 07/18/2018 09:36:28 PM
//

module activityleds (
	input      clk,
	input      [15:0] in, out,
	output reg sck, rck, ser
);

localparam STATE_INIT = 2'b00;
localparam STATE_SEND = 2'b01;
localparam STATE_LOOP = 2'b10;
localparam STATE_DONE = 2'b11;

reg [1:0] state = STATE_INIT;
reg [2:0] colpos = 3'b111;
reg [3:0] bitno = 4'b1111;

reg [63:0] idle_count = 0;
wire idle = idle_count[29]; // 28 = 20s, 29 = 40s, 30 = 80s, 31 = 160s (12mhz clock)
reg [15:0] ssin = 0;
reg [15:0] ssout = 0;
wire [15:0] inact  = idle ? ssin  : in;
wire [15:0] outact = idle ? ssout : out;

// flow:
// shiftreg 0-7:  in0 in1 .. in7 | out0 out1 .. out7 | in8 in9 .. in15  | out8 out9 .. out15
// shiftreg 9-12: 0   0      0   | 1    1       1    | 2   2      2     | 3    3       3
// First hc494 has 8 leds cathode, 2nd hc494 has 4 anodes with drivers, total 4*8 rows = 32 leds.

// Increase nr of bits if ghosting appears on led matrix.
// Max update speed depends on the specific led driver used.
localparam shiftclk = 8;
reg [shiftclk:0] clk_cntr;
wire clk2 = clk_cntr[shiftclk];
always @(posedge clk) begin
	clk_cntr <= clk_cntr + 1;
	if (clk_cntr[shiftclk]) begin
		clk_cntr <= 0;
	end
end

// 74hc594 driver
always @(posedge clk)
begin
  if (clk2)
	case (state)
	STATE_INIT: begin
		rck <= 0;
		sck <= 0;
		bitno <= 4'b1111;
		colpos <= colpos + 1;
		state <= STATE_SEND;
	end
	STATE_SEND: begin
		if (bitno-1 == colpos) ser <= 1;
		else if (bitno == 10) ser <=  inact[colpos & 7];
		else if (bitno == 11) ser <= outact[colpos & 7];
		else if (bitno == 12) ser <= outact[colpos + 8];
		else if (bitno == 13) ser <=  inact[colpos + 8];
		else ser <= 0;
		sck <= 1;
		state <= STATE_LOOP;
	end
	STATE_LOOP: begin
		sck <= 0;
		bitno <= bitno - 1;
		state <= bitno == 0 ? STATE_DONE : STATE_SEND;
	end
	STATE_DONE: begin
		rck <= 1;
		state <= STATE_INIT;
	end
	default:
		state <= STATE_INIT;
	endcase
end

// screensaver
always @(posedge clk) begin
	if (in > 0 || out > 0) begin
		idle_count <= 0;
	end
	if (!idle) begin
		idle_count <= idle_count + 1;
	end
end

localparam ssclk = 20; // screensaver clock
reg [ssclk:0] ssclk_cntr;
wire ssclk2 = ssclk_cntr[ssclk];
always @(posedge clk) begin
	ssclk_cntr <= ssclk_cntr + 1;
	if (ssclk_cntr[ssclk]) begin
		ssclk_cntr <= 0;
	end
end
reg [2:0] ssbitno = 0;
always @(posedge clk) begin
	if (!idle) begin
		ssbitno <= 0;
		ssin <= 0;
		ssout <= 0;
	end
	else begin
		if (ssclk2) begin
			ssbitno <= ssbitno + 1;
			ssin[7-ssbitno & 7] <= !ssin[7-ssbitno & 7];
			ssin[7-ssbitno + 8] <= !ssin[7-ssbitno + 8];
			ssout[7-ssbitno & 7] <= !ssout[7-ssbitno & 7];
			ssout[7-ssbitno + 8] <= !ssout[7-ssbitno + 8];
		end
	end
end

endmodule