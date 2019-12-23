// MIDI Output Port. Transmit uart + multiple fifos.
module midi_out #(
	parameter CLKS_PER_BIT = 384,
	parameter PORTS = 16
) (
	input       clk,
	input       rst,
	output      o_serial,
	input       i_txdv,
	input [7:0] i_txdata,
	input [3:0] i_srcport,
	output      o_active
);

reg  [PORTS*8-1:0] src_lastcmd = 0;
wire [7:0] src_txbyte;
reg  [7:0] src_txdata = 0;
wire src_empty;
reg  src_fready = 0;
reg  src_txdv = 0;

reg [3:0] active_port = 4'b0000; // srcport

fifon #(.ADDR_WIDTH(8), .DATA_WIDTH(8), .PORT_WIDTH(4)) fifos_inst (
	.clk        (clk),
	.rst        (rst),
	.wr_data_i  (src_txdata), // from input
	.wr_en_i    (src_txdv),   // input ready
	.rd_data_o  (src_txbyte),
	.rd_en_i    (src_fready),
	.empty_o    (src_empty),
	.wr_portn   (i_srcport),
	.rd_portn   (active_port)
);

wire txactive;
reg [7:0] txbyte = 0;
reg send = 0;

uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_tx_inst(
	.i_Clock     (clk),
	.i_Tx_DV     (send),
	.i_Tx_Byte   (txbyte[7:0]), 
	.o_Tx_Active (txactive),
	.o_Tx_Serial (o_serial),
	.o_Tx_Done   ()
);

reg [1:0] expect_bytes = 0;
reg [7:0] expect_byte = 0;
reg [8:0] expect_timeout = 0; // should hold CLK_PER_TICKS * 1,25 or so

// localparam TIMEOUT = $rtoi(CLKS_PER_BIT * 1.25);

localparam s_IN_IDLE = 2'b00;
localparam s_IN_TX = 2'b01;
reg [1:0] input_state = s_IN_IDLE;

// if we receive input data for sending, store
// it in the appropiate fifo.
always @(posedge clk) begin
	case (input_state)
	s_IN_IDLE: begin
		if (i_txdv) begin
			src_txdata <= i_txdata;
			/* erilator lint_off WIDTH */
			src_txdv <= 1;
			input_state <= s_IN_TX;
			// $display("received data %0h active_port %0h", i_txdata, i_srcport);
		end
		else
			input_state <= s_IN_IDLE;
	end
	s_IN_TX: begin
		/* erilator lint_off WIDTH */
		src_txdv <= 0;
		input_state <= s_IN_IDLE;
	end
	default:
		input_state <= s_IN_IDLE;
	endcase
end

//

localparam s_IDLE     = 3'b000;
localparam s_NEXT     = 3'b001;
localparam s_READ     = 3'b010;
localparam s_READEND  = 3'b011;
localparam s_TRANSMIT = 3'b100;
localparam s_TXEND    = 3'b101;
localparam s_FINISH   = 3'b110;
localparam s_CLKEND   = 3'b111;

reg [2:0] state = s_IDLE;

// should be 7 bits because this is never a command
reg [7:0] nextbyte;

always @(posedge clk) begin
	// read current data from currently selected fifo/port
	// and set expectations based on the midi data.
	// TODO: implements the timeouts..
if (!txactive)
	case (state)
	s_IDLE: begin // idle
		// $display("%m: STATE: IDLE");
		if (!src_empty)
			state <= s_READ;
		else
			state <= s_NEXT;
	end
	s_NEXT: begin // nextport
		// $display("%m: STATE: NEXT");
		active_port <= active_port + 1;
		if (active_port >= PORTS-1) active_port <= 0;
		state <= s_IDLE;
	end
	s_READ: begin // read data from port
		// $display("%m: STATE: READ");
		if (nextbyte != 0) begin
			txbyte <= nextbyte;
			send <= 1;
			nextbyte <= 0;
			state <= s_TXEND;
		end
		else if (!src_empty) begin
			src_fready <= 1;
			state <= s_READEND;
		end
		else
			state <= s_READ;
	end
	s_READEND: begin // got data from fifo
		// $display("%m: STATE: READEND");
		src_fready <= 0;
		state <= s_TRANSMIT;
	end
	s_TRANSMIT: begin // transmit byte
		// $display("%m: STATE: TRANSMIT");
		send <= 1;

		// Check for continuous MIDI messages.
		// if (~src_txbyte>>7&1 && expect_bytes == 0 && expect_byte == 0) begin
		if (~src_txbyte[7] && expect_bytes == 0 && expect_byte == 0) begin
			txbyte <= src_lastcmd[active_port*8+:8];
			nextbyte <= src_txbyte;
		end
		else begin
			txbyte <= src_txbyte;
			nextbyte <= 0;
		end

		if (src_txbyte == 8'hf8)
			state <= s_CLKEND;
		else begin
			state <= s_TXEND;
			// if (src_txbyte>>7&1)
			if (src_txbyte[7])
				src_lastcmd[active_port*8+:8] <= src_txbyte;
		end
	end
	s_CLKEND: begin
		// $display("%m: STATE: CLKEND");
		send <= 0;
		state <= s_FINISH;
	end
	s_TXEND: begin // end transmit byte
		// $display("%m: STATE: TXEND");
		send <= 0;
		state <= s_FINISH;

		// case (txbyte>>4&15)
		case (txbyte[7:4])
		4'h9, // note on
		4'h8, // note off
		4'ha, // key pressure
		4'hb, // control change
		4'he: // pitchbend
			expect_bytes <= 2;
		4'hc, // program change
		4'hd: // channel pressure
			expect_bytes <= 1;
		4'hf:
			case (txbyte)
			8'hf0: begin // sysex
				expect_byte <= 8'hf7;
				expect_bytes <= 0;
			end
			8'hf1, // timecode frame
			8'hf3: // song select
				expect_bytes <= 1;
			8'hf2: // song position
				expect_bytes <= 2;
			// 8'hf8: ;
				// expect_bytes <= expect_bytes;
			default:
				// expect_bytes <= expect_bytes;
				expect_bytes <= 0;
			endcase
		default:
			if (expect_bytes > 0)
				expect_bytes <= expect_bytes - 1;
			else
				expect_bytes <= 0;
		endcase

		if (expect_byte > 0 && txbyte == expect_byte)
			expect_byte <= 0;
	end
	s_FINISH: begin // finish
		// $display("%m: STATE: FINISH");
		if (expect_byte == 0 && expect_bytes == 0)
			state <= s_IDLE;
		else
			state <= s_READ;
	end
	default: begin
		// $display("%m: STATE: DEFAULT");
		state <= s_IDLE;
	end
	endcase

	// process midi protocol
	// if (!send)
	// 	if (expect_timeout == 0)
	// 		nextactiveport();
	// else
	// 	expect_timeout <= expect_timeout - 1;

	if (send) begin
		$display("%m: byte: %0h active_port: %0h ebytes: %0h ebyte: %0h hbyte: %0h", 
		txbyte, active_port, expect_bytes, expect_byte, txbyte[7:4]);
	end

	// 	expect_timeout <= 50000; // TIMEOUT * 10; // == 384 * 1,25  == 480

	// end
end

// 0xf8 = clock, 0xfe = active sensing. Those are ignored for activity.
// assign o_active = i_txdv && i_txdata != 8'hf8 && i_txdata != 8'hfe;
assign o_active = send && txbyte != 8'hf8 && txbyte != 8'hfe;

endmodule