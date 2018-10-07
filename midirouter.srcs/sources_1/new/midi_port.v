`timescale 1ns / 1ps

module midi_port #(
    parameter CLKS_PER_BIT = 384,
	parameter PORTS = 16
) (
    input  clk,
    input  rst,
    input  i_txdv,
    output txserial,
    input  [7:0]i_txdata,
    input  rxserial,
    output [7:0]o_rxdata,
    output activity_in,
    output activity_out,
    input  [3:0]i_srcport,
	output o_rx_empty,
	input  i_rx_rden
);

// Receive uart + fifo

wire o_fifo_rxdv;
wire [7:0] o_fifo_rxdata;

uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_rx_inst(
	.i_Clock	 (clk),
	.i_Rx_Serial (rxserial),
	.o_Rx_DV	 (o_fifo_rxdv),
	.o_Rx_Byte	 (o_fifo_rxdata[7:0])
);

always @(posedge clk) begin
	if (o_fifo_rxdv) begin
		$display("%m: o_fifo_rxdv set, serial: %0b, data: %0h", rxserial, o_fifo_rxdata);
	end
end

fifo #(.DEPTH_WIDTH(2), .DATA_WIDTH(8)) fifo_rx (
    .clk        (clk),
    .rst        (rst),
    .wr_data_i  (o_fifo_rxdata[7:0]), // from input
    .wr_en_i    (o_fifo_rxdv),   // input ready
    .rd_data_o  (o_rxdata[7:0]),
    .rd_en_i    (i_rx_rden),
    .full_o     (),
    .empty_o    (o_rx_empty)
);

// Transmit with fifo

// 16 fifo's with 3 bit address
// Queues all input data from all source ports
wire [PORTS*8-1:0] src_txbyte;
reg  [7:0] insrc_txdata;
wire [PORTS-1:0] src_empty;
reg  [PORTS-1:0] src_send = 0;
reg  [PORTS-1:0] src_fready = 0;
reg  [PORTS-1:0] src_txdv;

fifo #(.DEPTH_WIDTH(6), .DATA_WIDTH(8)) fifosrcs[PORTS-1:0] (
    .clk        (clk),
    .rst        (rst),
    .wr_data_i  (insrc_txdata), // from input
    .wr_en_i    (src_txdv),   // input ready
    .rd_data_o  (src_txbyte),
    .rd_en_i    (src_fready),
    .full_o     (),
    .empty_o    (src_empty)
);

// 1 fifo with 8 bit address
wire txactive;
wire txdone;
reg [7:0] txbyte;
reg send = 0;

uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_tx_inst(
   .i_Clock     (clk),
   .i_Tx_DV     (send),
   .i_Tx_Byte   (txbyte[7:0]), 
   .o_Tx_Active (txactive),
   .o_Tx_Serial (txserial),
   .o_Tx_Done   (txdone)
);

reg [3:0] active_port = 0;
reg [2:0] expect_bytes = 0;
reg [7:0] expect_byte = 0;
reg [8:0] expect_timeout = 0; // should hold CLK_PER_TICKS * 1,25 or so

// localparam TIMEOUT = $rtoi(CLKS_PER_BIT * 1.25);

task nextactiveport;
begin
	active_port <= active_port + 1;
	// XXX: this check wouldn't be necessary if PORTS was a power of 2
	// and we had correct length vars. see also lint_off WIDTH ignores.
	// (or, just remove WIDTH linter ignores to see what i mean).
	if (active_port >= PORTS-1) active_port <= 0;
end
endtask

reg [3:0] i;
reg [2:0]state = 3'b000;
always @(posedge clk) begin
	// if we receive input data for sending, store
	// it in the appropiate fifo.
	// src_txdata[i_srcport*8+:8] <= i_txdata;
	insrc_txdata <= i_txdata;
	/* verilator lint_off WIDTH */
	src_txdv[i_srcport] <= i_txdv;
	for (i=0; i!=PORTS-1; i = i + 1) begin
		if (i != i_srcport) begin
			src_txdv[i] <= 0;
		end	
	end

	// read current data from currently selected fifo/port
	// and set expectations based on the midi data.
	// TODO: implements the timeouts..
    case (state)
    3'b000:
        if (!src_empty[active_port] && !txactive) begin
            src_fready[active_port] <= 1;
            state <= 3'b001;
		end
		else if (!txactive && expect_byte == 0 && expect_bytes == 0)
			nextactiveport();
    3'b001: begin
        src_fready[active_port] <= 0;
        state <= 3'b010;
	end
	3'b010: begin
		txbyte <= src_txbyte[active_port*8+:8];
        send <= 1;
        state <= 3'b011;

		case (src_txbyte[active_port*8+:8]>>4)
		8'h8, // note off
		8'h9, // note on
		8'ha, // key pressure
		8'hb, // control change
		8'he: // pitchbend
			expect_bytes <= 3;
		8'hc, // program change
		8'hd: // channel pressure
			expect_bytes <= 2;
		8'hf:
			case (src_txbyte[active_port*8+:8])
			16'hf0: // sysex
				expect_byte <= 16'hf7;
			16'hf1, // timecode frame
			16'hf3: // song select
				expect_bytes <= 2;
			16'hf2: // song position
				expect_bytes <= 3;
			default: ;
			endcase
		default: ;
		endcase
    end
    3'b011: begin
        send <= 0;
        state <= 3'b000;
		if (expect_byte > 0) begin
			if (txbyte == expect_byte) begin
				nextactiveport();
				expect_byte <= 0;
			end
		end
		else
			if (expect_bytes > 0)
				expect_bytes <= expect_bytes - 1;
    end
	default: ;
    endcase

	// process midi protocol
	// if (!send)
	// 	if (expect_timeout == 0)
	// 		nextactiveport();
	// else
	// 	expect_timeout <= expect_timeout - 1;

	if (send) begin
		$display("%m: byte: %0h active_port: %0h ebytes: %0h ebyte: %0h hbyte: %0h", txbyte, active_port, expect_bytes, expect_byte, txbyte[7:4]);
	end

	// 	expect_timeout <= 50000; // TIMEOUT * 10; // == 384 * 1,25  == 480

	// end
end

// Handle activity LEDs
// 1/(12_000_000/600_000) = 50ms
localparam DURATION = 600_000; // Blink duration.

reg [20:0] in_count, out_count;
assign activity_in = in_count != 0;
assign activity_out = out_count != 0;

// 0xf8 = clock, 0xfe = active sensing.
wire act_in  = o_fifo_rxdv && o_fifo_rxdata != 8'hf8 && o_fifo_rxdata != 8'hfe;
wire act_out = i_txdv && i_txdata != 8'hf8;

always @(posedge clk) begin
    in_count  <= act_in  ? DURATION : in_count  > 0 ? in_count  - 1 : 0;
    out_count <= act_out ? DURATION : out_count > 0 ? out_count - 1 : 0;
end

endmodule
