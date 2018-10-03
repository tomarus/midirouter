/* verilator lint_off STMTDLY */
`timescale 1ns / 1ps

module top #(
    parameter PORTS = 2,
    parameter CLOCK = 12_000_000
) (
    input wire clk,
    input wire rst,
    input   [PORTS-1:0] inport,
    output  [PORTS-1:0] outport,
    output  [PORTS-1:0] activity_in,
    output  [PORTS-1:0] activity_out
);

reg  [PORTS-1:0]   txdv = 0;
reg  [PORTS*8-1:0] txdata = 0;
wire [PORTS*8-1:0] rxdata;
wire [PORTS-1:0]   rxdv;
reg  [PORTS*4-1:0] txcurport;

midi_port #(.CLKS_PER_BIT(2)) ports[PORTS-1:0] (clk, rst, txdv, outport, txdata, rxdv, inport, rxdata, activity_in, activity_out, txcurport);

export "DPI-C" task sendbyte;

task sendbyte;
input int port;
input int inbyte;
input int srcport;
begin
    txdata[port*8+:8] = inbyte[7:0];
    txdv[port] = 1;
    txcurport[port*4+:4] = srcport[3:0];
    $display("sendbyte %0h port %0h", inbyte[7:0], srcport[3:0]);
end
endtask

export "DPI-C" task clearbyte;

task clearbyte;
input int port;
begin
    txdv[port] = 0;
end
endtask

// initial begin
// 	sendbyte(3'b000, 16'hf8);
// end

reg [3:0] port;
always @(posedge clk) begin
	// for (port=0; port<PORTS-1; port=port+1) begin
	// 	txdv[port] = 0;
	// end
end

endmodule
