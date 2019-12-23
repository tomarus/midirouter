module sram #(
) (
	input				clk,
	input				rst,

	input wire			req,
	input wire			rwflag,

	input wire [18:0]	addr,
	input wire [7:0]	wr_data,
	output reg [7:0]	rd_data,
	output reg			rd_valid = 1'b0,
	
	output wire			RamCEn,
	output reg			RamOEn = 1'b0,
	output reg			RamWEn = 1'b1,
	inout wire [7:0]	MemDB,
	output reg [18:0]	MemAdr
);

	reg  [7:0] wr_sram_data;
	wire [7:0] rd_sram_data;

	assign MemDB = RamOEn ? wr_sram_data : 8'hzz;
	assign rd_sram_data = RamOEn ? 8'h00 : MemDB;
	assign RamCEn = 1'b0;
	
	reg prev_req_is_rd = 1'b0;
	
	always@(posedge clk, posedge rst) begin
		if(rst)begin
			RamWEn <= 1'b1;
			RamOEn <= 1'b0;
			rd_valid <= 1'b0;
			prev_req_is_rd <= 1'b0;
		end else begin
			if(req) begin
				MemAdr <= addr;
				RamOEn <= rwflag;
				RamWEn <= ~rwflag;
				wr_sram_data <= wr_data;
			end else begin
				RamOEn <= 1'b0;
				RamWEn <= 1'b1;
			end
			
			if (req & ~rwflag) begin
				prev_req_is_rd <= 1'b1;
			end else begin
				prev_req_is_rd <= 1'b0;
			end
			
			if (prev_req_is_rd) begin
				rd_valid <= 1'b1;
				rd_data <= rd_sram_data;
			end else begin
				rd_valid <= 1'b0;
			end
		end
	end

	
endmodule
