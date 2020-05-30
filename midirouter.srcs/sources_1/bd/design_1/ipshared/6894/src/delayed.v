`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/24/2019 07:02:19 PM
// Design Name: 
// Module Name: delayed
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

module delayed #(
    parameter LED_DELAY_WIDTH = 2
) (
    input clk,
    input slowclk,
    input trigger,
    output wire ledbit
);

reg [LED_DELAY_WIDTH:0] counter;

assign ledbit = counter != 0;

always @(posedge clk) begin
    if (trigger) begin
        counter = {LED_DELAY_WIDTH{1'b1}};
    end
    else  begin
        if (slowclk) begin
            counter <= counter > 0 ? counter - 1 : 0;
        end
        else begin
            counter <= counter;
        end
    end
end

endmodule
