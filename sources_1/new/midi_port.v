`timescale 1ns / 1ps

module midi_port #(
    parameter CLOCK = 12_000_000
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
    output activity_out
);

// Receive
uart_rx #(.CLKS_PER_BIT(384)) uart_rx_inst (clk, rxserial, rxdv, rxdata[7:0]);

// A transmitter that works ok zonder fifo
//wire txactive;
//wire txdone;
//uart_tx uart_tx_inst (clk, txdv, txdata[7:0], txactive, txserial, txdone);

// Transmit with fifo
wire txactive;
wire txdone;
wire [7:0] fout;
wire full;
wire empty;
reg send = 0;
reg fready = 0;

fifo #(.DEPTH_WIDTH(8), .DATA_WIDTH(8)) fifobus ( // 256 * 8 bit
    .clk        (clk),
    .rst        (rst),
    .wr_data_i  (txdata),
    .wr_en_i    (txdv),
    .rd_data_o  (fout),
    .rd_en_i    (fready),
    .full_o     (full),
    .empty_o    (empty)
);

//uart_tx uart_tx_inst (clk, send, fout[7:0], txactive, txserial, txdone);
uart_tx #(.CLKS_PER_BIT(384)) uart_tx_inst(
   .i_Clock     (clk),
   .i_Tx_DV     (send),
   .i_Tx_Byte   (fout[7:0]), 
   .o_Tx_Active (txactive),
   .o_Tx_Serial (txserial),
   .o_Tx_Done   (txdone)
);
   
reg [2:0]state = 3'b01;
wire start = !empty && !txactive;

reg [20:0] in_count, out_count;
assign activity_in = in_count != 0;
assign activity_out = out_count != 0;

// Activity LEDs blink duration.
localparam DURATION = 600000;

always @(posedge clk) begin
    in_count  <= !rxserial ? DURATION : in_count  > 0 ? in_count  - 1 : 0;
    out_count <= !txserial ? DURATION : out_count > 0 ? out_count - 1 : 0;

    case (state)
    2'b01: 
        if (start) begin
            state <= 2'b10;
            fready <= 1;
        end
    2'b10: begin
        state <= 2'b11;
        fready <= 0;
        send <= 1;
    end
    2'b11: begin
        state <= 2'b01;
        send <= 0;
    end
    endcase
end

endmodule
