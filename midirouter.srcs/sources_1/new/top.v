`timescale 1ns / 1ps
// Create Date: 07/03/2018 07:40:36 PM
// Module Name: top

module top (
	input         clk,
	input  [15:0] min,
	output [15:0] mout,
	output [1:0]  led,
	output        led0_r, led0_g, led0_b,
	output        SR_SCK, SR_RCK, SR_SER
);

wire [15:0] activity_in, activity_out;
reg rst = 1;

always @(posedge clk) rst <= 0;

midictrl #(.PORTS(16),.CLKS_PER_BIT(384)) midi_controller (
	.clk          (clk),
	.rst          (rst),
	.inport       (min),
	.outport      (mout),
	.activity_in  (activity_in),
	.activity_out (activity_out)
);

activityleds activityleds_instance (
	.clk(clk),
	.sck(SR_SCK),
	.rck(SR_RCK),
	.ser(SR_SER),
	.in(activity_in),
	.out(activity_out)
);

// Turn all on-board leds off by default.
assign led[0] = 0;
assign led[1] = 0;
assign led0_r = 1;
assign led0_g = 1;
assign led0_b = 1;

endmodule
