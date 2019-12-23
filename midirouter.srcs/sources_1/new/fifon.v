/******************************************************************************
 Originally Inspired by:
 Copyright (C) 2013 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>
 This is a multiple-fifo using multiple ports using only one (large) piece of ram.
 ******************************************************************************/

module fifon #(
	parameter ADDR_WIDTH = 4,
	parameter DATA_WIDTH = 8,
	parameter PORT_WIDTH = 4
) (
	input                   clk,
	input                   rst,
	input [DATA_WIDTH-1:0]  wr_data_i,
	input                   wr_en_i,
	output [DATA_WIDTH-1:0] rd_data_o,
	input                   rd_en_i,
	output                  empty_o,
	input [PORT_WIDTH-1:0]  wr_portn,
	input [PORT_WIDTH-1:0]  rd_portn
);

localparam DW = (DATA_WIDTH  < 1) ? 1 : DATA_WIDTH;
localparam AW = (ADDR_WIDTH < 1) ? 1 : ADDR_WIDTH;
localparam PORTS = 1 << PORT_WIDTH;
localparam RAM_WIDTH = AW + PORT_WIDTH;

//synthesis translate_off
initial begin
	if (ADDR_WIDTH < 1) $display("%m : Warning: ADDR_WIDTH must be > 0. Setting minimum value (1)");
	if (DATA_WIDTH < 1) $display("%m : Warning: DATA_WIDTH must be > 0. Setting minimum value (1)");
	if (PORTS > 16)     $display("%m : Warning: PORTS > 16, Max 16 ports supported.");
end
//synthesis translate_on

reg [(PORTS*AW)-1:0] write_pointer;
reg [(PORTS*AW)-1:0] read_pointer;

wire [6:0] wp = wr_portn*AW;
wire [6:0] rp = rd_portn*AW;

// wire empty_int     = (write_pointer[AW] == read_pointer[AW]);
// wire full_or_empty = (write_pointer[AW-1:0] == read_pointer[AW-1:0]);
// assign full_o  = full_or_empty & !empty_int;
// assign empty_o = full_or_empty & empty_int;

reg empt;
assign empty_o = empt;

always @(posedge clk) begin
	empt = write_pointer[rp+:AW] == read_pointer[rp+:AW];// & 
	    //    write_pointer[rd_portn*AW-1+:4] == read_pointer[rd_portn*AW-1+:4];
	// if (empt)
		// $display("%m: FIFO EMPTY");

	if (wr_en_i) begin
		// $display("WRITE ADDRESS: %0h", write_pointer[wr_portn*AW+:4] + ((1<<AW)*wr_portn));
		/* verilator lint_off WIDTH */
		sram_wp = write_pointer[wp+:AW] + ((1<<AW)*wr_portn);
	end

	if (rd_en_i) begin
		// $display("READ ADDRESS: %0h", read_pointer[rd_portn*AW+:4] + ((1<<AW)*rd_portn));
		/* verilator lint_off WIDTH */
		sram_rp = read_pointer[rp+:AW] + ((1<<AW)*rd_portn);
	end
end

always @(posedge clk) begin
	if (wr_en_i)
		write_pointer[wp+:AW] <= write_pointer[wp+:AW] + 1'd1;

	if (rd_en_i)
		read_pointer[rp+:AW] <= read_pointer[rp+:AW] + 1'd1;

	if (rst) begin
		read_pointer  <= 0;
		write_pointer <= 0;
	end
end

reg [RAM_WIDTH-1:0] sram_rp;
reg [RAM_WIDTH-1:0] sram_wp;

simple_dpram_sclk #(
	.ADDR_WIDTH(RAM_WIDTH),
	.DATA_WIDTH(DW),
	.ENABLE_BYPASS(0)
) fifo_ram (
	.clk   (clk),
	.dout  (rd_data_o),
	.raddr (sram_rp),
	.re    (rd_en_i),
	.waddr (sram_wp),
	.we    (wr_en_i),
	.din   (wr_data_i)
);
endmodule