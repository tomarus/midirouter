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

localparam state_init = 2'b00;
localparam state_send = 2'b01;
localparam state_loop = 2'b10;
localparam state_done = 2'b11;
reg [1:0] state = state_init;
reg [2:0] colpos = 3'b111;
reg [3:0] bitno = 4'b1111;

// flow:
// shiftreg 0-7:  in0 in1 .. in7 | out0 out1 .. out7 | in8 in9 .. in15  | out8 out9 .. out15
// shiftreg 9-12: 0   0      0   | 1    1       1    | 2   2      2     | 3    3       3
// First hc494 has 8 leds cathode, 2nd hc494 has 4 anodes with drivers, total 4*8 rows = 32 leds.

// Increase nr of bits if ghosting appears on led matrix.
// Max update speed depends on the specific led driver used.
localparam shiftclk = 3;
reg [shiftclk:0] clk_cntr;
always @(posedge clk) clk_cntr <= clk_cntr + 1;
wire clk2 = clk_cntr[shiftclk];

always @(posedge clk2)
begin
    case (state)
    state_init: begin
        rck <= 0;
        sck <= 0;
        bitno <= 4'b1111;
        colpos <= colpos + 1;
        state <= state_send;
    end
    state_send: begin
        if (bitno-1 == colpos) ser <= 1;
        else if (bitno == 10) ser <=  in[colpos & 7];
        else if (bitno == 11) ser <= out[colpos & 7];
        else if (bitno == 12) ser <= out[colpos + 8];
        else if (bitno == 13) ser <=  in[colpos + 8];
        else ser <= 0;
        sck <= 1;
        state <= state_loop;
    end
    state_loop: begin
        sck <= 0;
        bitno <= bitno - 1;
        state <= bitno == 0 ? state_done : state_send;
    end
    state_done: begin
        rck <= 1;
        state <= state_init;
    end
        default: ;
    endcase
end

endmodule
