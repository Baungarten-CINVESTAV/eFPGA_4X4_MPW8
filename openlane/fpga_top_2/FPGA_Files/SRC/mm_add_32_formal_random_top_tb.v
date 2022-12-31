//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: mm_add_32
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Nov 29 07:43:15 2022
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

module mm_add_32_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

// ----- Shared inputs -------
	reg [0:0] num_1_0_;
	reg [0:0] num_1_1_;
	reg [0:0] num_1_2_;
	reg [0:0] num_1_3_;
	reg [0:0] num_1_4_;
	reg [0:0] num_1_5_;
	reg [0:0] num_1_6_;
	reg [0:0] num_1_7_;
	reg [0:0] num_1_8_;
	reg [0:0] num_1_9_;
	reg [0:0] num_1_10_;
	reg [0:0] num_1_11_;
	reg [0:0] num_1_12_;
	reg [0:0] num_1_13_;
	reg [0:0] num_1_14_;
	reg [0:0] num_1_15_;
	reg [0:0] num_1_16_;
	reg [0:0] num_1_17_;
	reg [0:0] num_1_18_;
	reg [0:0] num_1_19_;
	reg [0:0] num_1_20_;
	reg [0:0] num_1_21_;
	reg [0:0] num_1_22_;
	reg [0:0] num_1_23_;
	reg [0:0] num_1_24_;
	reg [0:0] num_1_25_;
	reg [0:0] num_1_26_;
	reg [0:0] num_1_27_;
	reg [0:0] num_1_28_;
	reg [0:0] num_1_29_;
	reg [0:0] num_1_30_;
	reg [0:0] num_1_31_;
	reg [0:0] num_2_0_;
	reg [0:0] num_2_1_;
	reg [0:0] num_2_2_;
	reg [0:0] num_2_3_;
	reg [0:0] num_2_4_;
	reg [0:0] num_2_5_;
	reg [0:0] num_2_6_;
	reg [0:0] num_2_7_;
	reg [0:0] num_2_8_;
	reg [0:0] num_2_9_;
	reg [0:0] num_2_10_;
	reg [0:0] num_2_11_;
	reg [0:0] num_2_12_;
	reg [0:0] num_2_13_;
	reg [0:0] num_2_14_;
	reg [0:0] num_2_15_;
	reg [0:0] num_2_16_;
	reg [0:0] num_2_17_;
	reg [0:0] num_2_18_;
	reg [0:0] num_2_19_;
	reg [0:0] num_2_20_;
	reg [0:0] num_2_21_;
	reg [0:0] num_2_22_;
	reg [0:0] num_2_23_;
	reg [0:0] num_2_24_;
	reg [0:0] num_2_25_;
	reg [0:0] num_2_26_;
	reg [0:0] num_2_27_;
	reg [0:0] num_2_28_;
	reg [0:0] num_2_29_;
	reg [0:0] num_2_30_;
	reg [0:0] num_2_31_;

// ----- FPGA fabric outputs -------
	wire [0:0] o_add_32_0__gfpga;
	wire [0:0] o_add_32_1__gfpga;
	wire [0:0] o_add_32_2__gfpga;
	wire [0:0] o_add_32_3__gfpga;
	wire [0:0] o_add_32_4__gfpga;
	wire [0:0] o_add_32_5__gfpga;
	wire [0:0] o_add_32_6__gfpga;
	wire [0:0] o_add_32_7__gfpga;
	wire [0:0] o_add_32_8__gfpga;
	wire [0:0] o_add_32_9__gfpga;
	wire [0:0] o_add_32_10__gfpga;
	wire [0:0] o_add_32_11__gfpga;
	wire [0:0] o_add_32_12__gfpga;
	wire [0:0] o_add_32_13__gfpga;
	wire [0:0] o_add_32_14__gfpga;
	wire [0:0] o_add_32_15__gfpga;
	wire [0:0] o_add_32_16__gfpga;
	wire [0:0] o_add_32_17__gfpga;
	wire [0:0] o_add_32_18__gfpga;
	wire [0:0] o_add_32_19__gfpga;
	wire [0:0] o_add_32_20__gfpga;
	wire [0:0] o_add_32_21__gfpga;
	wire [0:0] o_add_32_22__gfpga;
	wire [0:0] o_add_32_23__gfpga;
	wire [0:0] o_add_32_24__gfpga;
	wire [0:0] o_add_32_25__gfpga;
	wire [0:0] o_add_32_26__gfpga;
	wire [0:0] o_add_32_27__gfpga;
	wire [0:0] o_add_32_28__gfpga;
	wire [0:0] o_add_32_29__gfpga;
	wire [0:0] o_add_32_30__gfpga;
	wire [0:0] o_add_32_31__gfpga;

// ----- FPGA fabric instanciation -------
	mm_add_32_top_formal_verification FPGA_DUT(
		.num_1_0_(num_1_0_),
		.num_1_1_(num_1_1_),
		.num_1_2_(num_1_2_),
		.num_1_3_(num_1_3_),
		.num_1_4_(num_1_4_),
		.num_1_5_(num_1_5_),
		.num_1_6_(num_1_6_),
		.num_1_7_(num_1_7_),
		.num_1_8_(num_1_8_),
		.num_1_9_(num_1_9_),
		.num_1_10_(num_1_10_),
		.num_1_11_(num_1_11_),
		.num_1_12_(num_1_12_),
		.num_1_13_(num_1_13_),
		.num_1_14_(num_1_14_),
		.num_1_15_(num_1_15_),
		.num_1_16_(num_1_16_),
		.num_1_17_(num_1_17_),
		.num_1_18_(num_1_18_),
		.num_1_19_(num_1_19_),
		.num_1_20_(num_1_20_),
		.num_1_21_(num_1_21_),
		.num_1_22_(num_1_22_),
		.num_1_23_(num_1_23_),
		.num_1_24_(num_1_24_),
		.num_1_25_(num_1_25_),
		.num_1_26_(num_1_26_),
		.num_1_27_(num_1_27_),
		.num_1_28_(num_1_28_),
		.num_1_29_(num_1_29_),
		.num_1_30_(num_1_30_),
		.num_1_31_(num_1_31_),
		.num_2_0_(num_2_0_),
		.num_2_1_(num_2_1_),
		.num_2_2_(num_2_2_),
		.num_2_3_(num_2_3_),
		.num_2_4_(num_2_4_),
		.num_2_5_(num_2_5_),
		.num_2_6_(num_2_6_),
		.num_2_7_(num_2_7_),
		.num_2_8_(num_2_8_),
		.num_2_9_(num_2_9_),
		.num_2_10_(num_2_10_),
		.num_2_11_(num_2_11_),
		.num_2_12_(num_2_12_),
		.num_2_13_(num_2_13_),
		.num_2_14_(num_2_14_),
		.num_2_15_(num_2_15_),
		.num_2_16_(num_2_16_),
		.num_2_17_(num_2_17_),
		.num_2_18_(num_2_18_),
		.num_2_19_(num_2_19_),
		.num_2_20_(num_2_20_),
		.num_2_21_(num_2_21_),
		.num_2_22_(num_2_22_),
		.num_2_23_(num_2_23_),
		.num_2_24_(num_2_24_),
		.num_2_25_(num_2_25_),
		.num_2_26_(num_2_26_),
		.num_2_27_(num_2_27_),
		.num_2_28_(num_2_28_),
		.num_2_29_(num_2_29_),
		.num_2_30_(num_2_30_),
		.num_2_31_(num_2_31_),
		.o_add_32_0_(o_add_32_0__gfpga),
		.o_add_32_1_(o_add_32_1__gfpga),
		.o_add_32_2_(o_add_32_2__gfpga),
		.o_add_32_3_(o_add_32_3__gfpga),
		.o_add_32_4_(o_add_32_4__gfpga),
		.o_add_32_5_(o_add_32_5__gfpga),
		.o_add_32_6_(o_add_32_6__gfpga),
		.o_add_32_7_(o_add_32_7__gfpga),
		.o_add_32_8_(o_add_32_8__gfpga),
		.o_add_32_9_(o_add_32_9__gfpga),
		.o_add_32_10_(o_add_32_10__gfpga),
		.o_add_32_11_(o_add_32_11__gfpga),
		.o_add_32_12_(o_add_32_12__gfpga),
		.o_add_32_13_(o_add_32_13__gfpga),
		.o_add_32_14_(o_add_32_14__gfpga),
		.o_add_32_15_(o_add_32_15__gfpga),
		.o_add_32_16_(o_add_32_16__gfpga),
		.o_add_32_17_(o_add_32_17__gfpga),
		.o_add_32_18_(o_add_32_18__gfpga),
		.o_add_32_19_(o_add_32_19__gfpga),
		.o_add_32_20_(o_add_32_20__gfpga),
		.o_add_32_21_(o_add_32_21__gfpga),
		.o_add_32_22_(o_add_32_22__gfpga),
		.o_add_32_23_(o_add_32_23__gfpga),
		.o_add_32_24_(o_add_32_24__gfpga),
		.o_add_32_25_(o_add_32_25__gfpga),
		.o_add_32_26_(o_add_32_26__gfpga),
		.o_add_32_27_(o_add_32_27__gfpga),
		.o_add_32_28_(o_add_32_28__gfpga),
		.o_add_32_29_(o_add_32_29__gfpga),
		.o_add_32_30_(o_add_32_30__gfpga),
		.o_add_32_31_(o_add_32_31__gfpga)
	);
// ----- End FPGA Fabric Instanication -------

// ----- Clock 'clk' Initialization -------
	initial begin
		clk[0] <= 1'b0;
		while(1) begin
			#4.331201553
			clk[0] <= !clk[0];
		end
	end

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	initial begin
		num_1_0_ <= 1'b0;
		num_1_1_ <= 1'b0;
		num_1_2_ <= 1'b0;
		num_1_3_ <= 1'b0;
		num_1_4_ <= 1'b0;
		num_1_5_ <= 1'b0;
		num_1_6_ <= 1'b0;
		num_1_7_ <= 1'b0;
		num_1_8_ <= 1'b0;
		num_1_9_ <= 1'b0;
		num_1_10_ <= 1'b0;
		num_1_11_ <= 1'b0;
		num_1_12_ <= 1'b0;
		num_1_13_ <= 1'b0;
		num_1_14_ <= 1'b0;
		num_1_15_ <= 1'b0;
		num_1_16_ <= 1'b0;
		num_1_17_ <= 1'b0;
		num_1_18_ <= 1'b0;
		num_1_19_ <= 1'b0;
		num_1_20_ <= 1'b0;
		num_1_21_ <= 1'b0;
		num_1_22_ <= 1'b0;
		num_1_23_ <= 1'b0;
		num_1_24_ <= 1'b0;
		num_1_25_ <= 1'b0;
		num_1_26_ <= 1'b0;
		num_1_27_ <= 1'b0;
		num_1_28_ <= 1'b0;
		num_1_29_ <= 1'b0;
		num_1_30_ <= 1'b0;
		num_1_31_ <= 1'b0;
		num_2_0_ <= 1'b0;
		num_2_1_ <= 1'b0;
		num_2_2_ <= 1'b0;
		num_2_3_ <= 1'b0;
		num_2_4_ <= 1'b0;
		num_2_5_ <= 1'b0;
		num_2_6_ <= 1'b0;
		num_2_7_ <= 1'b0;
		num_2_8_ <= 1'b0;
		num_2_9_ <= 1'b0;
		num_2_10_ <= 1'b0;
		num_2_11_ <= 1'b0;
		num_2_12_ <= 1'b0;
		num_2_13_ <= 1'b0;
		num_2_14_ <= 1'b0;
		num_2_15_ <= 1'b0;
		num_2_16_ <= 1'b0;
		num_2_17_ <= 1'b0;
		num_2_18_ <= 1'b0;
		num_2_19_ <= 1'b0;
		num_2_20_ <= 1'b0;
		num_2_21_ <= 1'b0;
		num_2_22_ <= 1'b0;
		num_2_23_ <= 1'b0;
		num_2_24_ <= 1'b0;
		num_2_25_ <= 1'b0;
		num_2_26_ <= 1'b0;
		num_2_27_ <= 1'b0;
		num_2_28_ <= 1'b0;
		num_2_29_ <= 1'b0;
		num_2_30_ <= 1'b0;
		num_2_31_ <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk[0]) begin
		num_1_0_ <= $random;
		num_1_1_ <= $random;
		num_1_2_ <= $random;
		num_1_3_ <= $random;
		num_1_4_ <= $random;
		num_1_5_ <= $random;
		num_1_6_ <= $random;
		num_1_7_ <= $random;
		num_1_8_ <= $random;
		num_1_9_ <= $random;
		num_1_10_ <= $random;
		num_1_11_ <= $random;
		num_1_12_ <= $random;
		num_1_13_ <= $random;
		num_1_14_ <= $random;
		num_1_15_ <= $random;
		num_1_16_ <= $random;
		num_1_17_ <= $random;
		num_1_18_ <= $random;
		num_1_19_ <= $random;
		num_1_20_ <= $random;
		num_1_21_ <= $random;
		num_1_22_ <= $random;
		num_1_23_ <= $random;
		num_1_24_ <= $random;
		num_1_25_ <= $random;
		num_1_26_ <= $random;
		num_1_27_ <= $random;
		num_1_28_ <= $random;
		num_1_29_ <= $random;
		num_1_30_ <= $random;
		num_1_31_ <= $random;
		num_2_0_ <= $random;
		num_2_1_ <= $random;
		num_2_2_ <= $random;
		num_2_3_ <= $random;
		num_2_4_ <= $random;
		num_2_5_ <= $random;
		num_2_6_ <= $random;
		num_2_7_ <= $random;
		num_2_8_ <= $random;
		num_2_9_ <= $random;
		num_2_10_ <= $random;
		num_2_11_ <= $random;
		num_2_12_ <= $random;
		num_2_13_ <= $random;
		num_2_14_ <= $random;
		num_2_15_ <= $random;
		num_2_16_ <= $random;
		num_2_17_ <= $random;
		num_2_18_ <= $random;
		num_2_19_ <= $random;
		num_2_20_ <= $random;
		num_2_21_ <= $random;
		num_2_22_ <= $random;
		num_2_23_ <= $random;
		num_2_24_ <= $random;
		num_2_25_ <= $random;
		num_2_26_ <= $random;
		num_2_27_ <= $random;
		num_2_28_ <= $random;
		num_2_29_ <= $random;
		num_2_30_ <= $random;
		num_2_31_ <= $random;
	end

// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("mm_add_32_formal.vcd");
		$dumpvars(1, mm_add_32_top_formal_verification_random_tb);
	end
// ----- END output waveform to VCD file -------

initial begin
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");
// ----- Can be changed by the user for his/her need -------
	#4331.20166
	$display("Simulation Succeed");
	$finish;
end

endmodule
// ----- END Verilog module for mm_add_32_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype wire

