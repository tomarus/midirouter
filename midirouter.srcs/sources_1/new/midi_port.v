`timescale 1ns / 1ps

module midi_port #(
	parameter CLKS_PER_BIT = 384,
	parameter PORTS = 16
) (
	input        clk,
	input        rst,
	input        i_txdv,
	output       o_txserial,
	input  [7:0] i_txdata,
	input        i_rxserial,
	output [7:0] o_rxdata,
	output       o_activity_in,
	output       o_activity_out,
	input  [3:0] i_srcport,
	output       o_rx_empty,
	input        i_rx_rden,
	input        i_ledclken
);

wire act_in;
wire act_out;

midi_in #(.CLKS_PER_BIT(CLKS_PER_BIT)) midi_in_inst (
	.clk        (clk),
	.rst        (rst),
	.i_serial   (i_rxserial),
	.i_rx_rden  (i_rx_rden),
	.o_rxdata   (o_rxdata),
	.o_rx_empty (o_rx_empty),
	.o_active   (act_in)
);

midi_out #(.CLKS_PER_BIT(CLKS_PER_BIT), .PORTS(PORTS)) midi_out_inst (
	.clk       (clk),
	.rst       (rst),
	.o_serial  (o_txserial),
	.i_txdv    (i_txdv),
	.i_txdata  (i_txdata),
	.i_srcport (i_srcport),
	.o_active  (act_out)
);

// Handle activity LEDs
// localparam DURATION = 600_000; // Blink duration ca 50ms with 12mhz clk.
localparam DURATION = 2; // Blink duration ca 50ms with 12mhz/16bit clk.

reg [4:0] in_count, out_count;
assign o_activity_in = in_count != 0;
assign o_activity_out = out_count != 0;

always @(posedge clk) begin
	if (act_in) in_count <= DURATION;
	if (act_out) out_count <= DURATION;
	if (i_ledclken) begin
		in_count  <= in_count  > 0 ? in_count  - 1 : 0;
		out_count <= out_count > 0 ? out_count - 1 : 0;
	end
end

endmodule
