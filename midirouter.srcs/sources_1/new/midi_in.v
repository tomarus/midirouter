// MIDI Input Port. Receive uart + fifo.
module midi_in #(
	parameter CLKS_PER_BIT = 384
) (
	input        clk,
	input        rst,
	input        i_serial,
	input        i_rx_rden,
	output [7:0] o_rxdata,
	output       o_rx_empty,
	output       o_active
);

wire rxdv;
wire [7:0] rxdata;

uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_rx_inst (
	.i_Clock     (clk),
	.i_Rx_Serial (i_serial),
	.o_Rx_DV     (rxdv),
	.o_Rx_Byte   (rxdata[7:0])
);

fifo #(.DEPTH_WIDTH(2), .DATA_WIDTH(8)) fifo_rx (
	.clk        (clk),
	.rst        (rst),
	.wr_data_i  (rxdata[7:0]),
	.wr_en_i    (rxdv),
	.rd_data_o  (o_rxdata[7:0]),
	.rd_en_i    (i_rx_rden),
	.full_o     (),
	.empty_o    (o_rx_empty)
);

// 0xf8 = clock, 0xfe = active sensing. Those are ignored for activity.
assign o_active = rxdv && rxdata != 8'hf8 && rxdata != 8'hfe;

endmodule
