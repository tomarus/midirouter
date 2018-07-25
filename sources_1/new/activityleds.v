`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 09:36:28 PM
// Design Name: 
// Module Name: activityleds
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

module activityleds (
    input      clk,
    input      [15:0] in, out,
    output reg sck, rck, ser
);

localparam state_init = 3'b000;
localparam state_send = 3'b001;
localparam state_loop = 3'b010;
localparam state_done = 3'b011;
localparam state_reset= 3'b100;
reg [2:0] state = state_init;
reg [3:0] bitno = 4'b0000;
reg [1:0] rowpos = 2'b11;
wire [3:0] rowpos_bin = 1 << rowpos;

// flow:
// shiftreg 0-7:  in0 in1 .. in7 | out0 out1 .. out7 | in8 in9 .. in15  | out8 out9 .. out15
// shiftreg 9-12: 0   0      0   | 1    1       1    | 2   2      2     | 3    3       3
// First hc494 has 8 leds cathode, 2nd hc494 has 4 anodes with drivers, total 4*8 rows = 32 leds.

// Increase nr of bits if ghosting appears on led matrix.
// This is about 100khz (76bit) or 3mhz (2bit) assuming a 12mhz clock.
// The max update speed depends on the specific led driver used.
reg [7:0] clk_cntr;
always @(posedge clk) clk_cntr <= clk_cntr + 1;
wire clk2 = clk_cntr[7];

always @(posedge clk2)
begin
    case (state)
    state_init: begin
        rck <= 0;
        sck <= 0;
        bitno <= 15;
        state <= state_send;
        rowpos <= rowpos + 1;
    end
    state_send: begin
        if      (bitno < 9 && rowpos == 2'b00) ser <= in[bitno - 1];
        else if (bitno < 9 && rowpos == 2'b01) ser <= in[8 + bitno - 1];
        else if (bitno < 9 && rowpos == 2'b10) ser <= out[bitno - 1];
        else if (bitno < 9 && rowpos == 2'b11) ser <= out[8 + bitno - 1];
        else if (bitno >= 10 && bitno <= 13)   ser <= rowpos_bin[13 - bitno];
        else ser <= 0;
        
        sck <= 1;
        state <= bitno == 0 ? state_done : state_loop;
        bitno <= bitno - 1;
    end
    state_loop: begin
        sck <= 0;
        state <= state_send;
    end
    state_done: begin
        sck <= 0;
        state <= state_reset;
    end
    state_reset: begin
        rck <= 1;
        state <= state_init;
    end
    endcase
end

endmodule
