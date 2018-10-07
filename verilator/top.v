/* verilator lint_off STMTDLY */
`timescale 1ns / 1ps

module top #(
    parameter PORTS = 8,
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
reg  [PORTS*4-1:0] txcurport;
wire [PORTS-1:0]   rx_empty;
reg  [PORTS-1:0]   rx_rden = 0;

midi_port #(.CLKS_PER_BIT(2), .PORTS(PORTS)) ports[PORTS-1:0] (clk, rst, txdv, outport, txdata, inport, rxdata, activity_in, activity_out, txcurport, rx_empty, rx_rden);

export "DPI-C" task sendbyte;

task sendbyte;
input int port;
input int inbyte;
input int srcport;
begin
    txdata[port*8+:8] = inbyte[7:0];
    txdv[port] = 1;
    txcurport[port*4+:4] = srcport[3:0];
    $display("sendbyte %0h port %0h srcport %0h empty: %0h", inbyte[7:0], port, srcport[3:0], rx_empty);
end
endtask

export "DPI-C" task clearbyte;

task clearbyte;
input int port;
begin
    txdv[port] = 0;
end
endtask

endmodule
