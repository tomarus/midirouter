`timescale 1ns / 1ps

module midi_port #(
    parameter CLKS_PER_BIT = 384
) (
    input  clk,
    input  rst,
    input  txdv,
    output txserial,
    input  [7:0]txdata,
    output rxdv,
    input  rxserial,
    output [7:0]rxdata,
    output activity_in,
    output activity_out,
    input  [3:0]inport
);

wire txactive;
wire txdone;
wire [7:0] txbyte;
wire full;
wire empty;
reg send = 0;
reg fready = 0;

// Transmit with fifo
fifo #(.DEPTH_WIDTH(8), .DATA_WIDTH(8)) fifobus ( // 8 * 8 bit
    .clk        (clk),
    .rst        (rst),
    .wr_data_i  (txdata), // from input
    .wr_en_i    (txdv),   // input ready
    .rd_data_o  (txbyte),
    .rd_en_i    (fready),
    .full_o     (full),
    .empty_o    (empty)
);

uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_tx_inst(
   .i_Clock     (clk),
   .i_Tx_DV     (send),
   .i_Tx_Byte   (txbyte[7:0]), 
   .o_Tx_Active (txactive),
   .o_Tx_Serial (txserial),
   .o_Tx_Done   (txdone)
);

// Receive (handle directly, no fifo)
uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) uart_rx_inst(
	.i_Clock	 (clk),
	.i_Rx_Serial (rxserial),
	.o_Rx_DV	 (rxdv),
	.o_Rx_Byte	 (rxdata[7:0])
);

reg [1:0]state = 2'b00;
wire start_tx = !empty && !txactive;

always @(posedge clk) begin
    case (state)
    2'b00:
        if (start_tx) begin
            state <= 2'b01;
            fready <= 1;
        end
    2'b01: begin
        state <= 2'b10;
        fready <= 0;
        send <= 1;
    end
    2'b10: begin
        state <= 2'b00;
        send <= 0;
    end
	default: ;
    endcase
end

// Handle activity LEDs
// 1/(12_000_000/600_000) = 50ms
localparam DURATION = 600_000; // Blink duration.

reg [20:0] in_count, out_count;
assign activity_in = in_count != 0;
assign activity_out = out_count != 0;

// 0xf8 = clock, 0xfe = active sensing.
wire act_in  = rxdv && rxdata != 8'hf8 && rxdata != 8'hfe;
wire act_out = txdv && txdata != 8'hf8;

always @(posedge clk) begin
    in_count  <= act_in  ? DURATION : in_count  > 0 ? in_count  - 1 : 0;
    out_count <= act_out ? DURATION : out_count > 0 ? out_count - 1 : 0;
end

endmodule
