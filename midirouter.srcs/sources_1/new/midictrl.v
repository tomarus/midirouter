`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2018 12:52:50 PM
// Design Name: 
// Module Name: midictrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module midictrl #( 
	parameter PORTS = 16,
	parameter CLKS_PER_BIT = 384
) (
	input   clk,
	input   rst,
	input   [PORTS-1:0] inport,
	output  [PORTS-1:0] outport,
	output  [PORTS-1:0] activity_in,
	output  [PORTS-1:0] activity_out
);

reg  [PORTS-1:0]   txdv = 0;
reg  [PORTS*8-1:0] txdata = 0;
wire [PORTS*8-1:0] rxdata;
reg  [PORTS*4-1:0] txcurport = 0;
wire [PORTS-1:0] rx_empty;
reg  [PORTS-1:0] rx_rden = 0;

reg [15:0] ledclk;
reg ledclken;
always @(posedge clk) begin
	ledclk <= ledclk + 1;
	if (ledclk == 0) ledclken <= 1;
	else ledclken <= 0;
end

midi_port #(.CLKS_PER_BIT(CLKS_PER_BIT), .PORTS(PORTS)) 
	ports[PORTS-1:0] 
	(clk, rst, txdv, outport, txdata, inport, rxdata, activity_in, activity_out, txcurport, rx_empty, rx_rden, ledclken);

reg [63:0] cfg_in_filter = 64'hffffffffffffffff;
reg [63:0] cfg_in_router = 64'hffffffffffffffff;

reg [4:0]port = 0;

reg reset_running = 0;
reg [4:0] reset_counter = 0;
reg [4:0] chcnt = 0;
reg [3:0] msgcnt = 0;

reg sysex_running = 0;
reg [16*8-1:0] sxdata = 0; // 16 * 8 bits of sysex command max
reg [4:0] sxpos = 0;

reg [PORTS*2-1:0] portstate = 0;

reg [3:0] checkport = 2;
reg [2:0] checkstate = 0;

always @(posedge clk)
begin
	txdv[PORTS-1:0] <= 0;

	if (reset_running)
		runreset();
	else if (rst) begin
		reset_counter <= 0;
		reset_running <= 1;
		chcnt <= 0;
		msgcnt <= 0;
	end
	else begin
		if (sysex_running) runsysex();

		case (checkstate)
		3'b000: begin
			checkport <= checkport + 1;
			checkstate <= 3'b001;
		end
		3'b001: begin
			if (!rx_empty[checkport]) begin
				rx_rden[checkport] <= 1;
				checkstate <= 3'b010;
			end
			else begin
				rx_rden[checkport] <= 0;
				checkstate <= 3'b000;
			end
		end
		3'b010: begin
			rx_rden[checkport] <= 0;
			checkstate <= 3'b011;
		end
		3'b011: begin
			handlebyte(checkport, rxdata[checkport*8+:8], portstate[checkport*2+:2]);
			checkstate <= 3'b100;
		end
		3'b100: begin
			checkstate <= 3'b000;
		end
		default: begin
			checkstate <= 3'b000;
		end
		endcase
	end
end

localparam s_IDLE = 2'b00;
localparam s_DATA = 2'b01;
localparam s_SYSEX = 2'b10;

localparam sx_BEGIN = 2'b00;
localparam sx_ID1 = 2'b01;
localparam sx_ID2 = 2'b10;
localparam sx_BUF = 2'b11;
reg [PORTS*2-1:0] sxstate = 0;

task handlebyte;
input [3:0]port;
input [7:0]byte;
input [2:0]state;
begin
	case (byte[7])
	// command
	1'b1:
		begin
			case (byte[7:0])
			8'hff: ; // ignore system reset
			8'hfe: ; // ignore active sensing
			8'hf0: begin
				portstate[port*2+:2] <= s_SYSEX;
				sxstate[port*2+:2] <= sx_BEGIN;
				notallportmsg(byte, port);
			end
			8'hf7: begin
				portstate[port*2+:2] <= s_IDLE;
				sysex_running <= 1;
				reset_counter <= 0;
				chcnt <= 0;
				notallportmsg(byte, port);
			end
			default: begin
				notallportmsg(byte, port);
			end
			endcase
		end
	 // data
	 1'b0:
		begin
			notallportmsg(byte, port);

			case (state[2:0])
//            s_IDLE:
//            s_DATA:
			s_SYSEX:
				begin
				 handlesysex(port, byte[7:0]);
				end
			endcase
		end
	endcase
end
endtask

//  output.send
//      0xf0, 0x7d,        // sysex, non commercial / educational manufacturer id.
//      0x2a, 0x4d,        // my own little secret magic number id for this router.
//      0x00,              // COMMAND 0x00 = request sysex config dump.
//      0xf7
//  response = 0xf0, 0x7d, 0x2a, 0x4d,
//      0x40, 0x01,            // RESPONSE 0x40, version 1
//      0x01, 0x02,            // 1 inport, 2 outports
//      byte(int(bpm) >> 7),   // current speet msb
//      byte(int(bpm) & 0x7f), // current speed lsb
//      0xf7

reg [11*8-1:0] cfg = 'hf0_7d_2a_4d_40_01_0f_0f_00_70_f7;

reg [13:0] sxdelay = 0;

task runsysex;
begin
	if (sxpos == 0 || sxdata[7:0] != 0) begin // cnd 0 = request config dunp
//    if (sxpos == 0) begin // cnd 0 = request config dunp
		sysex_running <= 0;
	end
	else begin
		sxdelay <= sxdelay + 1;
		if (sxdelay == 3840) begin
			sxdelay <= 0;
			allportmsg(cfg[(11-reset_counter)*8+:8]);
			reset_counter <= reset_counter + 1;
			if (reset_counter == 8'd11) begin
				sysex_running <= 0;
			end
		end
	end
end
endtask

task handlesysex;
input [3:0]port;
input [7:0]byte;
begin
   case (sxstate[port*2+:2])
	sx_BEGIN: begin
		if (byte[7:0] == 8'h7d) sxstate[port*2+:2] <= sx_ID1;
	end
	sx_ID1: begin
		if (byte[7:0] == 8'h2a) sxstate[port*2+:2] <= sx_ID2;
	end
	sx_ID2: begin
		if (byte[7:0] == 8'h4d) begin
			sxstate[port*2+:2] <= sx_BUF;
			sxpos[4:0] <= 4'b0000;
		end
	end
	sx_BUF:
		begin
			sxdata[sxpos*8+:8] <= byte[7:0];
			sxpos <= sxpos + 1;
		end
	endcase
end
endtask

// reset

task runreset;
begin
	sxdelay <= sxdelay + 1;
	if (sxdelay == 3840) begin
		sxdelay <= 0;
	case (reset_counter)
	3'h0: begin
		allportmsg(8'hfc);
		reset_counter <= reset_counter + 1;
	end
	3'h1: begin
		allportallchmsg(8'hb0, 8'h78, 8'h00); // All sound off
	end
	3'h2: begin
		allportallchmsg(8'hb0, 8'h79, 8'h00); // Reset all controllers
	end
	3'h3: begin
		allportallchmsg(8'hb0, 8'h7b, 8'h00); // All notes off
	end
	3'h4: begin
		reset_running <= 0;
	end
	endcase
	end
end
endtask

task allportallchmsg;
input [7:0]msg1, msg2, msg3;
begin
	case (msgcnt)
	3'b000: begin
		allportmsg(msg1 + chcnt);
		msgcnt <= msgcnt + 1;
	end
	3'b001: begin
		allportmsg(msg2);
		msgcnt <= msgcnt + 1;
	end
	3'b010: begin
		allportmsg(msg3);
		msgcnt <= 0;

		if (chcnt == 4'd15) begin
			reset_counter <= reset_counter + 1;
			chcnt <= 0;
		end
		else begin
			chcnt <= chcnt + 1;
		end
	end
	default:
		msgcnt <= 0;
	endcase
end
endtask

reg [4:0]port_apmsg = 0;
task allportmsg;
input [7:0]msg;
	for (port_apmsg=0; port_apmsg<PORTS; port_apmsg=port_apmsg+1) begin
		sendbyte(port_apmsg, msg, -1); // TODO: -1
	end
endtask

task notallportmsg;
input [7:0]msg;
input [3:0]current_port;
	for (port_apmsg=0; port_apmsg<PORTS; port_apmsg=port_apmsg+1) begin
		if (port_apmsg != current_port) begin
			sendbyte(port_apmsg, msg, current_port);
		end
	end
endtask

task sendbyte;
input [3:0] port;
input [7:0] byte;
input [3:0] srcport;
begin
	txdata[port*8+:8] <= byte[7:0];
	txdv[port] <= 1;
	txcurport[port*4+:4] <= srcport[3:0];
end
endtask

endmodule
