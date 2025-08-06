//-----------------------------------------------------
// This is a generated file
//-----------------------------------------------------
// Copyright 2018 ETH Zurich and University of bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

`include "pulp_soc_defines.svh"
`include "pulp_peripheral_defines.svh"

module pad_frame(

    input logic [`N_IO-1:0][`NBIT_PADCFG-1:0] pad_cfg_i,

    input io_clock_PAD,
    input io_reset_PAD,

    // sysio signals
    output logic stm_o,
    output logic bootsel_o,
    output logic sysclk_p_o,
    output logic ref_clk_o,
    output logic rstn_o,
    output logic jtag_tck_o,
    output logic jtag_tdi_o,
    input  logic jtag_tdo_i,
    output logic jtag_tms_o,
    output logic jtag_trst_o,

    // internal io signals
    input  logic [`N_IO-1:0] io_out_i,  // data going to pads
    input  logic [`N_IO-1:0] io_oe_i,   // enable going to pads
    output logic [`N_IO-1:0] io_in_o,   // data coming from pads

    // pad signals
    inout  wire [`N_IO-1:0] io
    );
    // dummy wire to make lint clean
    wire void1;
    // connect io
      assign jtag_tck_i = io_in_o[0];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_0   (.c2p_en(~io_oe_i[0]), .c2p(io_out_i[0]), .p2c(io_in_o[0]), .pad(io[0]));
      assign jtag_tdi_i = io_in_o[1];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_1   (.c2p_en(~io_oe_i[1]), .c2p(io_out_i[1]), .p2c(io_in_o[1]), .pad(io[1]));
      assign io_out_i[2] = jtag_tdo_o;
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_2   (.c2p_en(~io_oe_i[2]), .c2p(io_out_i[2]), .p2c(io_in_o[2]), .pad(io[2]));
      assign jtag_tms_i = io_in_o[3];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_3   (.c2p_en(~io_oe_i[3]), .c2p(io_out_i[3]), .p2c(io_in_o[3]), .pad(io[3]));
      assign jtag_trst_i = io_in_o[4];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_4   (.c2p_en(~io_oe_i[4]), .c2p(io_out_i[4]), .p2c(io_in_o[4]), .pad(io[4]));
      assign ref_clk_o = io_in_o[5];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_5   (.c2p_en(~io_oe_i[5]), .c2p(io_out_i[5]), .p2c(io_in_o[5]), .pad(io[5]));
      assign rstn_i = io_in_o[6];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_6   (.c2p_en(~io_oe_i[6]), .c2p(io_out_i[6]), .p2c(io_in_o[6]), .pad(io[6]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_7   (.c2p_en(~io_oe_i[7]), .c2p(io_out_i[7]), .p2c(io_in_o[7]), .pad(io[7]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_8   (.c2p_en(~io_oe_i[8]), .c2p(io_out_i[8]), .p2c(io_in_o[8]), .pad(io[8]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_9   (.c2p_en(~io_oe_i[9]), .c2p(io_out_i[9]), .p2c(io_in_o[9]), .pad(io[9]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_10   (.c2p_en(~io_oe_i[10]), .c2p(io_out_i[10]), .p2c(io_in_o[10]), .pad(io[10]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_11   (.c2p_en(~io_oe_i[11]), .c2p(io_out_i[11]), .p2c(io_in_o[11]), .pad(io[11]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_12   (.c2p_en(~io_oe_i[12]), .c2p(io_out_i[12]), .p2c(io_in_o[12]), .pad(io[12]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_13   (.c2p_en(~io_oe_i[13]), .c2p(io_out_i[13]), .p2c(io_in_o[13]), .pad(io[13]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_14   (.c2p_en(~io_oe_i[14]), .c2p(io_out_i[14]), .p2c(io_in_o[14]), .pad(io[14]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_15   (.c2p_en(~io_oe_i[15]), .c2p(io_out_i[15]), .p2c(io_in_o[15]), .pad(io[15]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_16   (.c2p_en(~io_oe_i[16]), .c2p(io_out_i[16]), .p2c(io_in_o[16]), .pad(io[16]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_17   (.c2p_en(~io_oe_i[17]), .c2p(io_out_i[17]), .p2c(io_in_o[17]), .pad(io[17]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_18   (.c2p_en(~io_oe_i[18]), .c2p(io_out_i[18]), .p2c(io_in_o[18]), .pad(io[18]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_19   (.c2p_en(~io_oe_i[19]), .c2p(io_out_i[19]), .p2c(io_in_o[19]), .pad(io[19]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_20   (.c2p_en(~io_oe_i[20]), .c2p(io_out_i[20]), .p2c(io_in_o[20]), .pad(io[20]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_21   (.c2p_en(~io_oe_i[21]), .c2p(io_out_i[21]), .p2c(io_in_o[21]), .pad(io[21]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_22   (.c2p_en(~io_oe_i[22]), .c2p(io_out_i[22]), .p2c(io_in_o[22]), .pad(io[22]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_23   (.c2p_en(~io_oe_i[23]), .c2p(io_out_i[23]), .p2c(io_in_o[23]), .pad(io[23]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_24   (.c2p_en(~io_oe_i[24]), .c2p(io_out_i[24]), .p2c(io_in_o[24]), .pad(io[24]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_25   (.c2p_en(~io_oe_i[25]), .c2p(io_out_i[25]), .p2c(io_in_o[25]), .pad(io[25]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_26   (.c2p_en(~io_oe_i[26]), .c2p(io_out_i[26]), .p2c(io_in_o[26]), .pad(io[26]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_27   (.c2p_en(~io_oe_i[27]), .c2p(io_out_i[27]), .p2c(io_in_o[27]), .pad(io[27]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_28   (.c2p_en(~io_oe_i[28]), .c2p(io_out_i[28]), .p2c(io_in_o[28]), .pad(io[28]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_29   (.c2p_en(~io_oe_i[29]), .c2p(io_out_i[29]), .p2c(io_in_o[29]), .pad(io[29]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_30   (.c2p_en(~io_oe_i[30]), .c2p(io_out_i[30]), .p2c(io_in_o[30]), .pad(io[30]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_31   (.c2p_en(~io_oe_i[31]), .c2p(io_out_i[31]), .p2c(io_in_o[31]), .pad(io[31]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_32   (.c2p_en(~io_oe_i[32]), .c2p(io_out_i[32]), .p2c(io_in_o[32]), .pad(io[32]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_33   (.c2p_en(~io_oe_i[33]), .c2p(io_out_i[33]), .p2c(io_in_o[33]), .pad(io[33]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_34   (.c2p_en(~io_oe_i[34]), .c2p(io_out_i[34]), .p2c(io_in_o[34]), .pad(io[34]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_35   (.c2p_en(~io_oe_i[35]), .c2p(io_out_i[35]), .p2c(io_in_o[35]), .pad(io[35]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_36   (.c2p_en(~io_oe_i[36]), .c2p(io_out_i[36]), .p2c(io_in_o[36]), .pad(io[36]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_37   (.c2p_en(~io_oe_i[37]), .c2p(io_out_i[37]), .p2c(io_in_o[37]), .pad(io[37]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_38   (.c2p_en(~io_oe_i[38]), .c2p(io_out_i[38]), .p2c(io_in_o[38]), .pad(io[38]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_39   (.c2p_en(~io_oe_i[39]), .c2p(io_out_i[39]), .p2c(io_in_o[39]), .pad(io[39]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_40   (.c2p_en(~io_oe_i[40]), .c2p(io_out_i[40]), .p2c(io_in_o[40]), .pad(io[40]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_41   (.c2p_en(~io_oe_i[41]), .c2p(io_out_i[41]), .p2c(io_in_o[41]), .pad(io[41]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_42   (.c2p_en(~io_oe_i[42]), .c2p(io_out_i[42]), .p2c(io_in_o[42]), .pad(io[42]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_43   (.c2p_en(~io_oe_i[43]), .c2p(io_out_i[43]), .p2c(io_in_o[43]), .pad(io[43]));
      assign stm_i = io_in_o[44];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_44   (.c2p_en(~io_oe_i[44]), .c2p(io_out_i[44]), .p2c(io_in_o[44]), .pad(io[44]));
      assign bootsel_i = io_in_o[45];
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_45   (.c2p_en(~io_oe_i[45]), .c2p(io_out_i[45]), .p2c(io_in_o[45]), .pad(io[45]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_46   (.c2p_en(~io_oe_i[46]), .c2p(io_out_i[46]), .p2c(io_in_o[46]), .pad(io[46]));
    sg13g2_IOPadInOut4mA sg13g2_IOPad_io_47   (.c2p_en(~io_oe_i[47]), .c2p(io_out_i[47]), .p2c(io_in_o[47]), .pad(io[47]));

    sg13g2_IOPadIn sg13g2_IOPad_io_clock (
        .p2c (io_clock_p2c), //o
        .pad (io_clock_PAD)  //~
    );
    sg13g2_IOPadIn sg13g2_IOPad_io_reset (
        .p2c (io_reset_p2c), //o
        .pad (io_reset_PAD)  //~
    );

endmodule
