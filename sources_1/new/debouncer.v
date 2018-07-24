`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2018 06:26:54 PM
// Design Name: 
// Module Name: debuncer
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


module debouncer(
    input clk, pin,
    output reg state
);

reg sync_0, sync_1;
always @(posedge clk) sync_0 <= pin;
always @(posedge clk) sync_1 <= sync_0;

reg [15:0] count;

always @(posedge clk)
    if (state == sync_1)
        count <= 0;
    else begin
        count <= count + 1;
        if (count == 16'hffff) state <= ~state;
    end

endmodule
