// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
/*
-----------------Inputs---------------------
        FPGA Top-I
            gfpga_pad_GPIO_PAD_in*[0-15]
        FPGA Right-I
            gfpga_pad_GPIO_PAD_in*[16-31]
        FPGA Bottom-I
            gfpga_pad_GPIO_PAD_in*[32-47]
        FPGA Left-I
            gfpga_pad_GPIO_PAD_in*[48-63]
            
-----------------Outputs---------------------
        FPGA Top-O
            gfpga_pad_GPIO_PAD_out*[0-15]
        FPGA Bottom-O
            gfpga_pad_GPIO_PAD_out*[16-31]
        FPGA Right-O
            gfpga_pad_GPIO_PAD_out*[32-47]
        FPGA Left-O
            gfpga_pad_GPIO_PAD_out*[48-63]
            
        IOs Connections:
        Caravel IO       | FPGA                  |  Mode
        
        io_in[13]        | pReset                | Input
        io_in[37]        | prog_clk              | Input
        io_in[14]        | set                   | Input
        io_in[15]        | reset                 | Input
        io_in[36]        | clk                   | Input
        
        la_data_in[63:0] | gfpga_pad_GPIO_PAD_in | Input
        la_data_out[63:0]| gfpga_pad_GPIO_PAD_out| Output
        
        io_in[12]        | ccff_head             | Input  
        io_out[35]       | ccff_tail             | Output
        

        

        
*/

// FPGA wires
wire pReset_fm;
wire prog_clk_fm;
wire clk_fm;

wire [63:0] gfpga_pad_GPIO_PAD_in;
wire [63:0] gfpga_pad_GPIO_PAD_out;
wire ccff_head_fm;
wire ccff_tail_fm;


wire set_fm;
wire reset_fm;

// -------------- FPGA top-level module ------------------
fpga_top fpga_top (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
	.pReset(pReset_fm[0]),
	.prog_clk(prog_clk_fm[0]),
	.set(set_fm[0]),
	.reset(reset_fm[0]),
	.clk(clk_fm[0]),
	.gfpga_pad_GPIO_PAD_in(gfpga_pad_GPIO_PAD_in),
	.gfpga_pad_GPIO_PAD_out(gfpga_pad_GPIO_PAD_out),
	.ccff_head(ccff_head_fm[0]),
	.ccff_tail(ccff_tail_fm[0]));
	
// pReset_fm -- Input
assign pReset_fm = io_in[13];
assign io_out[13] = 1'b0;
assign io_oeb[13] = 1'b1;
		
// PROG-CLK -- Input
// Wire-bond LEFT side I/O of FPGA to LEFT-side of Caravel interface
assign prog_clk_fm = io_in[37];
assign io_out[37] = 1'b0;
assign io_oeb[37] = 1'b1;

// set_fm -- Input
assign set_fm = io_in[14];
assign io_out[14] = 1'b0;
assign io_oeb[14] = 1'b1;

// reset_fm -- Input
assign reset_fm = io_in[15];
assign io_out[15] = 1'b0;
assign io_oeb[15] = 1'b1;

// CLK -- Input
// FPGA clock port can be driven by either wishbone clock or an GPIO
assign clk_fm = io_in[36];
assign io_out[36] = 1'b0;
assign io_oeb[36] = 1'b1;

// gfpga_pad_GPIO_PAD_in -- Input
assign gfpga_pad_GPIO_PAD_in = la_data_in[63:0];

// gfpga_pad_GPIO_PAD_out -- Output
assign gfpga_pad_GPIO_PAD_out = la_data_out[63:0];

// CCFF_HEAD - Input
assign ccff_head_fm = io_in[12];
assign io_out[12] = 1'b0;
assign io_oeb[12] = 1'b1;

// CCFF-TAIL - Output
assign io_out[35] = ccff_tail_fm;
assign io_oeb[35] = 1'b0;



endmodule	// user_project_wrapper

`default_nettype wire
