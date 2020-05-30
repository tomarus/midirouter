`timescale 1ns / 1ps
//
// 74HC594 Led Driver with Screensaver
//
// Create Date: 07/18/2018 09:36:28 PM
//

module leds #(
    parameter SHIFT_DELAY_WIDTH = 8,
    parameter ANIMATION_IDLE_WIDTH = 29,
    parameter ANIMATION_CLOCK_WIDTH = 20,
    parameter LED_DELAY_WIDTH = 2,
    parameter LED_CLOCK_WIDTH = 17
) (
	input      clk,
	input      [15:0] in, out,
	output reg sck, rck, ser
);


// screensaver idle detector
reg [ANIMATION_IDLE_WIDTH:0] idle_count = 0;
wire idle = idle_count[ANIMATION_IDLE_WIDTH]; // 28 = 20s, 29 = 40s, 30 = 80s, 31 = 160s (12mhz clock)
wire notidle = in > 0 || out > 0;

always @(posedge clk) begin
    if (notidle) begin
        idle_count <= 0;
    end
    else begin
        if (!idle) begin
            idle_count <= idle_count + 1;
        end
        else begin
            idle_count <= idle_count;
        end
    end
end

// Upon receiving a single clock cycle of activity,
// make the leds flash duration about 50-100ms.
wire [15:0] inbits;
wire [15:0] outbits;
reg [LED_CLOCK_WIDTH:0] ledclk_c;
wire ledclk = ledclk_c == 0;

always @(posedge clk) begin
    ledclk_c <= ledclk_c + 1;
end

delayed #(.LED_DELAY_WIDTH(LED_DELAY_WIDTH)) input_leds_inst [15:0] (
    .clk(clk),
    .slowclk(ledclk),
    .trigger(in),
    .ledbit(inbits)
);
delayed #(.LED_DELAY_WIDTH(LED_DELAY_WIDTH)) output_leds_inst [15:0] (
    .clk(clk),
    .slowclk(ledclk),
    .trigger(out),
    .ledbit(outbits)
);

// screensaver animation clock
reg [ANIMATION_CLOCK_WIDTH:0] ssclk_cntr;
wire ssclk2 = ssclk_cntr[ANIMATION_CLOCK_WIDTH];

always @(posedge clk) begin
	ssclk_cntr <= ssclk_cntr + 1;
	if (ssclk_cntr[ANIMATION_CLOCK_WIDTH]) begin
		ssclk_cntr <= 0;
	end
end


// screensaver animation
reg [2:0] ssbitno = 0;
reg [15:0] ssin = 0;
reg [15:0] ssout = 0;
wire [15:0] inact  = idle ? ssin  : inbits;
wire [15:0] outact = idle ? ssout : outbits;

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


// 74hc594 clock
// Increase nr of bits if ghosting appears on led matrix.
// Max update speed depends on the specific led driver used.
reg [SHIFT_DELAY_WIDTH:0] clk_cntr;
wire clk2 = clk_cntr[SHIFT_DELAY_WIDTH];

always @(posedge clk) begin
	clk_cntr <= clk_cntr + 1;
	if (clk_cntr[SHIFT_DELAY_WIDTH]) begin
		clk_cntr <= 0;
	end
end


// 74hc594 driver
localparam STATE_INIT = 2'b00;
localparam STATE_SEND = 2'b01;
localparam STATE_LOOP = 2'b10;
localparam STATE_DONE = 2'b11;
reg [1:0] state = STATE_INIT;
reg [2:0] colpos = 3'b111;
reg [3:0] bitno = 4'b1111;

always @(posedge clk)
begin
	if (clk2) begin
		case (state)
		STATE_INIT: begin
			rck <= 0;
			sck <= 0;
			bitno <= 4'b1111;
			colpos <= colpos + 1;
			state <= STATE_SEND;
		end
		STATE_SEND: begin
//			if (bitno-1 == colpos) ser <= 1;
			if (bitno == colpos) ser <= 1;
			else if (bitno == 9) ser <=  inact[colpos & 7];
			else if (bitno == 10) ser <= outact[colpos & 7];
			else if (bitno == 11) ser <= outact[colpos + 8];
			else if (bitno == 12) ser <=  inact[colpos + 8];
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
end

endmodule