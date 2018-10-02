`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2018 10:05:37 PM
// Design Name: 
// Module Name: activityleds_sim
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

`timescale 1ns / 1ps

module activityleds_sim();

reg sysclk = 0;
reg [15:0] in_activity, out_activity;
wire SR_SCK, SR_RCK, SR_SER;

always sysclk = #1 ~sysclk;

activityleds activityleds_instance (
    .clk(sysclk),
    .sck(SR_SCK),
    .rck(SR_RCK),
    .ser(SR_SER),
    .in(in_activity),
    .out(out_activity)
);

reg [1:0] act_tb;
wire [3:0] bin_tb = 1 << act_tb;

initial begin
    in_activity  = 16'b0101010101010101;
    out_activity = 16'b1010101010101010;
    $display("-----------------------------------------------------------------");
    $display("Activity Reset");
    $display("-----------------------------------------------------------------");
    #136;
    
    $display("-----------------------------------------------------------------");
    act_tb = 0;
    #1;
    $display(bin_tb[3], bin_tb[2], bin_tb[1], bin_tb[0]);
    #1;
    act_tb = 1;
    #1;
    $display(bin_tb[3], bin_tb[2], bin_tb[1], bin_tb[0]);
    #1;
    act_tb = 2;
    #1;
    $display(bin_tb[3], bin_tb[2], bin_tb[1], bin_tb[0]);
    #1;
    act_tb = 3;
    #1;
    $display(bin_tb[3], bin_tb[2], bin_tb[1], bin_tb[0]);
    #1;
    $display("-----------------------------------------------------------------");
end

endmodule 
