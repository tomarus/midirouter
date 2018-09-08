`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2018 07:40:36 PM
// Design Name: 
// Module Name: top
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


module top (
    input sysclk,
    input [15:0]min,
    input [1:0]btn,
    output [15:0]mout,
    output [1:0]led,
    output led0_r, led0_g, led0_b,
    output SR_SCK, SR_RCK, SR_SER
);

//

wire rst_db;
debouncer rst_debouncer (sysclk, btn[0], rst_db);

wire [15:0] activity_in, activity_out;

midictrl #(.PORTS(16),.CLOCK(12_000_000)) midi_controller (
    .clk          (sysclk),
    .rst          (rst_db),
    .inport       (min),
    .outport      (mout),
    .activity_in  (activity_in),
    .activity_out (activity_out)
);

//

//reg [31:0] in_count [15:0]; // = 60_000_000;
//reg [31:0] out_count [15:0]; // = 60_000_000;
//reg [15:0] in_activity, out_activity;
//integer i;
//always @(posedge sysclk) begin
//    for (i=0; i<16; i = i + 1) begin
//        in_count[i]  <= !min[i]  ? 600000 : in_count[i]  > 0 ? in_count[i]  - 1 : 0;
//        out_count[i] <= !mout[i] ? 600000 : out_count[i] > 0 ? out_count[i] - 1 : 0;
//        in_activity[i]  <= in_count[i] != 0;
//        out_activity[i] <= out_count[i] != 0;
//    end
//end
//assign led[0] = in_count[0] != 0;
//assign led[1] = out_count[0] != 0;

//
//wire [15:0] in_activity  = 16'b1101000000001111;
//wire [15:0] out_activity = 16'b1101000000000000;

activityleds activityleds_instance (
    .clk(sysclk),
    .sck(SR_SCK),
    .rck(SR_RCK),
    .ser(SR_SER),
    .in(activity_in),
    .out(activity_out)
);

//

assign led[0] = 0;
assign led[1] = 0;
assign led0_r = 1;
assign led0_g = 1;
assign led0_b = 1;

endmodule
