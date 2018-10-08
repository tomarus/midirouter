// MIDI Output Port. Transmit uart + multiple fifos.
module midi_out #(
    parameter CLKS_PER_BIT = 384,
    parameter PORTS = 16
) (
    input		clk,
    input		rst,
    output		o_serial,
	input		i_txdv,
	input [7:0] i_txdata,
	input [3:0] i_srcport,
	output		o_active
);

wire [PORTS*8-1:0] src_txbyte;
reg  [PORTS*8-1:0] src_txdata;
wire [PORTS-1:0] src_empty;
reg  [PORTS-1:0] src_send = 0;
reg  [PORTS-1:0] src_fready = 0;
reg  [PORTS-1:0] src_txdv;

fifo #(.DEPTH_WIDTH(5), .DATA_WIDTH(8)) fifosrcs[PORTS-1:0] (
    .clk        (clk),
    .rst        (rst),
    .wr_data_i  (src_txdata), // from input
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
   .o_Tx_Serial (o_serial),
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
	src_txdata[i_srcport*8+:8] <= i_txdata;
	// src_txdata <= i_txdata;
	for (i=0; i!=PORTS-1; i = i + 1) begin
		if (i != i_srcport) begin
			/* verilator lint_off WIDTH */
			src_txdv[i] <= 0;
		end	
	end
	/* verilator lint_off WIDTH */
	src_txdv[i_srcport] <= i_txdv;
end

always @(posedge clk) begin
	// read current data from currently selected fifo/port
	// and set expectations based on the midi data.
	// TODO: implements the timeouts..
	// TODO: If data occurs when command expected, resend last command first.
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

// 0xf8 = clock, 0xfe = active sensing. Those are ignored for activity.
assign o_active = i_txdv && i_txdata != 8'hf8 && i_txdata != 8'hfe;

endmodule