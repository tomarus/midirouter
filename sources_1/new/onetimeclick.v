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


module onetimeclick(
    input clk, pin,
    output reg state
);

wire click;
debouncer db_1 (clk, pin, click);

reg clicked;

always @(posedge clk)
begin
    if (click && !clicked) begin
        clicked <= 1;
        state <= 1;
    end
    else begin
        state <= 0;
    end
    if (!click)
        clicked <= 0;
end

endmodule 