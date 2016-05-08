////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: MyNco.v
// /___/   /\     Timestamp: Sun May 08 15:48:07 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/FPGA/Verilog_Sample/DDSTest/MyNco/tmp/_cg/MyNco.ngc D:/FPGA/Verilog_Sample/DDSTest/MyNco/tmp/_cg/MyNco.v 
// Device	: 6slx45tfgg484-3
// Input file	: D:/FPGA/Verilog_Sample/DDSTest/MyNco/tmp/_cg/MyNco.ngc
// Output file	: D:/FPGA/Verilog_Sample/DDSTest/MyNco/tmp/_cg/MyNco.v
// # of Modules	: 1
// Design Name	: MyNco
// Xilinx        : d:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module MyNco (
  reg_select, ce, clk, sclr, we, rdy, rfd, data, cosine, sine, phase_out
)/* synthesis syn_black_box syn_noprune=1 */;
  input reg_select;
  input ce;
  input clk;
  input sclr;
  input we;
  output rdy;
  output rfd;
  input [29 : 0] data;
  output [7 : 0] cosine;
  output [7 : 0] sine;
  output [29 : 0] phase_out;
  
  // synthesis translate_off
  
  wire \U0/i_synth/i_rdy.i_single_channel.i_non_trivial_lat.i_rdy/opt_has_pipe.first_q ;
  wire NlwRenamedSig_OI_rfd;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire \blk00000060/sig00000132 ;
  wire \blk00000060/sig00000131 ;
  wire \blk00000060/sig00000130 ;
  wire \blk00000060/sig0000012f ;
  wire \blk00000060/sig0000012e ;
  wire \blk00000060/sig0000012d ;
  wire \blk00000060/sig0000012c ;
  wire \blk00000060/sig0000012b ;
  wire \blk00000060/sig0000012a ;
  wire \blk00000060/sig00000129 ;
  wire \blk00000060/sig00000128 ;
  wire \blk00000060/sig00000127 ;
  wire \blk00000060/sig00000126 ;
  wire \blk00000060/sig00000125 ;
  wire \blk00000060/sig00000124 ;
  wire \blk00000060/sig00000123 ;
  wire \blk00000060/sig00000122 ;
  wire \blk00000060/sig00000121 ;
  wire \blk00000060/sig00000120 ;
  wire \blk00000060/sig0000011f ;
  wire \blk00000060/sig0000011e ;
  wire \blk00000060/sig0000011d ;
  wire \blk00000060/sig0000011c ;
  wire \blk00000060/sig0000011b ;
  wire \blk00000060/sig0000011a ;
  wire \blk00000060/sig00000119 ;
  wire \blk00000060/sig00000118 ;
  wire \blk00000060/sig00000117 ;
  wire \blk00000060/sig00000116 ;
  wire \blk00000060/sig00000115 ;
  wire \blk00000060/sig00000114 ;
  wire \blk00000060/sig00000113 ;
  wire \blk00000060/sig00000112 ;
  wire \blk00000060/sig00000111 ;
  wire \blk00000060/sig00000110 ;
  wire \blk00000060/sig0000010f ;
  wire \blk00000060/sig0000010e ;
  wire \blk00000060/sig0000010d ;
  wire \blk00000060/sig0000010c ;
  wire \blk00000060/sig0000010b ;
  wire \blk00000060/sig0000010a ;
  wire \blk00000060/sig00000109 ;
  wire \blk00000060/sig00000108 ;
  wire \blk00000060/sig00000107 ;
  wire \blk00000060/sig00000106 ;
  wire \blk00000060/sig00000105 ;
  wire \blk00000060/sig00000104 ;
  wire \blk00000060/sig00000103 ;
  wire \blk00000060/sig00000102 ;
  wire \blk00000060/sig00000101 ;
  wire \blk00000060/sig00000100 ;
  wire \blk00000060/sig000000ff ;
  wire \blk00000060/sig000000fe ;
  wire \blk00000060/sig000000fd ;
  wire \blk00000060/sig000000fc ;
  wire \blk00000060/sig000000fb ;
  wire \blk00000060/sig000000fa ;
  wire \blk00000060/sig000000f9 ;
  wire \blk00000060/sig000000f8 ;
  wire \blk000000bb/sig000001c9 ;
  wire \blk000000bb/sig000001c8 ;
  wire \blk000000bb/sig000001c7 ;
  wire \blk000000bb/sig000001c6 ;
  wire \blk000000bb/sig000001c5 ;
  wire \blk000000bb/sig000001c4 ;
  wire \blk000000bb/sig000001c3 ;
  wire \blk000000bb/sig000001c2 ;
  wire \blk000000bb/sig000001c1 ;
  wire \blk000000bb/sig000001c0 ;
  wire \blk000000bb/sig000001bf ;
  wire \blk000000bb/sig000001be ;
  wire \blk000000bb/sig000001bd ;
  wire \blk000000bb/sig000001bc ;
  wire \blk000000bb/sig000001bb ;
  wire \blk000000bb/sig000001ba ;
  wire \blk000000bb/sig000001b9 ;
  wire \blk000000bb/sig000001b8 ;
  wire \blk000000bb/sig000001b7 ;
  wire \blk000000bb/sig000001b6 ;
  wire \blk000000bb/sig000001b5 ;
  wire \blk000000bb/sig000001b4 ;
  wire \blk000000bb/sig000001b3 ;
  wire \blk000000bb/sig000001b2 ;
  wire \blk000000bb/sig000001b1 ;
  wire \blk000000bb/sig000001b0 ;
  wire \blk000000bb/sig000001af ;
  wire \blk000000bb/sig000001ae ;
  wire \blk000000bb/sig000001ad ;
  wire \blk000000bb/sig000001ac ;
  wire \blk000000bb/sig000001ab ;
  wire \blk000000bb/sig000001aa ;
  wire \blk000000bb/sig000001a9 ;
  wire \blk000000bb/sig000001a8 ;
  wire \blk000000bb/sig000001a7 ;
  wire \blk000000bb/sig000001a6 ;
  wire \blk000000bb/sig000001a5 ;
  wire \blk000000bb/sig000001a4 ;
  wire \blk000000bb/sig000001a3 ;
  wire \blk000000bb/sig000001a2 ;
  wire \blk000000bb/sig000001a1 ;
  wire \blk000000bb/sig000001a0 ;
  wire \blk000000bb/sig0000019f ;
  wire \blk000000bb/sig0000019e ;
  wire \blk000000bb/sig0000019d ;
  wire \blk000000bb/sig0000019c ;
  wire \blk000000bb/sig0000019b ;
  wire \blk000000bb/sig0000019a ;
  wire \blk000000bb/sig00000199 ;
  wire \blk000000bb/sig00000198 ;
  wire \blk000000bb/sig00000197 ;
  wire \blk000000bb/sig00000196 ;
  wire \blk000000bb/sig00000195 ;
  wire \blk000000bb/sig00000194 ;
  wire \blk000000bb/sig00000193 ;
  wire \blk000000bb/sig00000192 ;
  wire \blk000000bb/sig00000191 ;
  wire \blk000000bb/sig00000190 ;
  wire \blk000000bb/sig0000018f ;
  wire \NLW_blk00000003_DOADO<15>_UNCONNECTED ;
  wire \NLW_blk00000003_DOADO<14>_UNCONNECTED ;
  wire \NLW_blk00000003_DOADO<13>_UNCONNECTED ;
  wire \NLW_blk00000003_DOADO<12>_UNCONNECTED ;
  wire \NLW_blk00000003_DOADO<11>_UNCONNECTED ;
  wire \NLW_blk00000003_DOADO<10>_UNCONNECTED ;
  wire \NLW_blk00000003_DOADO<9>_UNCONNECTED ;
  wire \NLW_blk00000003_DOADO<8>_UNCONNECTED ;
  wire \NLW_blk00000003_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk00000003_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_blk00000003_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_blk00000003_DOPBDOP<0>_UNCONNECTED ;
  wire \NLW_blk00000003_ADDRAWRADDR<2>_UNCONNECTED ;
  wire \NLW_blk00000003_ADDRAWRADDR<1>_UNCONNECTED ;
  wire \NLW_blk00000003_ADDRAWRADDR<0>_UNCONNECTED ;
  wire \NLW_blk00000003_DIPBDIP<1>_UNCONNECTED ;
  wire \NLW_blk00000003_DIPBDIP<0>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<15>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<14>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<13>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<12>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<11>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<10>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<9>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<8>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<7>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<6>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<5>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<4>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<3>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<2>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<1>_UNCONNECTED ;
  wire \NLW_blk00000003_DIBDI<0>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<15>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<14>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<13>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<12>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<11>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<10>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<9>_UNCONNECTED ;
  wire \NLW_blk00000003_DIADI<8>_UNCONNECTED ;
  wire \NLW_blk00000003_ADDRBRDADDR<2>_UNCONNECTED ;
  wire \NLW_blk00000003_ADDRBRDADDR<1>_UNCONNECTED ;
  wire \NLW_blk00000003_ADDRBRDADDR<0>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<15>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<14>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<13>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<12>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<11>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<10>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<9>_UNCONNECTED ;
  wire \NLW_blk00000003_DOBDO<8>_UNCONNECTED ;
  wire \NLW_blk00000003_DIPADIP<1>_UNCONNECTED ;
  wire [29 : 0] \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q ;
  assign
    phase_out[29] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [29],
    phase_out[28] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [28],
    phase_out[27] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [27],
    phase_out[26] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [26],
    phase_out[25] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [25],
    phase_out[24] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [24],
    phase_out[23] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [23],
    phase_out[22] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [22],
    phase_out[21] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [21],
    phase_out[20] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [20],
    phase_out[19] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [19],
    phase_out[18] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [18],
    phase_out[17] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [17],
    phase_out[16] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [16],
    phase_out[15] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [15],
    phase_out[14] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [14],
    phase_out[13] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [13],
    phase_out[12] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [12],
    phase_out[11] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [11],
    phase_out[10] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [10],
    phase_out[9] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [9],
    phase_out[8] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [8],
    phase_out[7] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [7],
    phase_out[6] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [6],
    phase_out[5] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [5],
    phase_out[4] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [4],
    phase_out[3] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [3],
    phase_out[2] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [2],
    phase_out[1] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [1],
    phase_out[0] = \U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [0],
    rdy = \U0/i_synth/i_rdy.i_single_channel.i_non_trivial_lat.i_rdy/opt_has_pipe.first_q ,
    rfd = NlwRenamedSig_OI_rfd;
  VCC   blk00000001 (
    .P(NlwRenamedSig_OI_rfd)
  );
  GND   blk00000002 (
    .G(sig00000001)
  );
  RAMB8BWER #(
    .INIT_00 ( 256'h585653514F4C4A4745423F3D3A3734322F2C292623201D1A1714110E0B080502 ),
    .INIT_01 ( 256'h7E7E7E7E7D7D7C7C7B7B7A7978777675747371706E6D6B6A68666462605E5C5A ),
    .INIT_02 ( 256'h5A5C5E60626466686A6B6D6E7071737475767778797A7B7B7C7C7D7D7E7E7E7E ),
    .INIT_03 ( 256'h0205080B0E1114171A1D202326292C2F3234373A3D3F4245474A4C4F51535658 ),
    .INIT_04 ( 256'hA8AAADAFB1B4B6B9BBBEC1C3C6C9CCCED1D4D7DADDE0E3E6E9ECEFF2F5F8FBFE ),
    .INIT_05 ( 256'h82828282838384848585868788898A8B8C8D8F9092939596989A9C9EA0A2A4A6 ),
    .INIT_06 ( 256'hA6A4A2A09E9C9A9896959392908F8D8C8B8A8988878685858484838382828282 ),
    .INIT_07 ( 256'hFEFBF8F5F2EFECE9E6E3E0DDDAD7D4D1CECCC9C6C3C1BEBBB9B6B4B1AFADAAA8 ),
    .INIT_08 ( 256'h5A5C5E60626466686A6B6D6E7071737475767778797A7B7B7C7C7D7D7E7E7E7E ),
    .INIT_09 ( 256'h0205080B0E1114171A1D202326292C2F3234373A3D3F4245474A4C4F51535658 ),
    .INIT_0A ( 256'hA8AAADAFB1B4B6B9BBBEC1C3C6C9CCCED1D4D7DADDE0E3E6E9ECEFF2F5F8FBFE ),
    .INIT_0B ( 256'h82828282838384848585868788898A8B8C8D8F9092939596989A9C9EA0A2A4A6 ),
    .INIT_0C ( 256'hA6A4A2A09E9C9A9896959392908F8D8C8B8A8988878685858484838382828282 ),
    .INIT_0D ( 256'hFEFBF8F5F2EFECE9E6E3E0DDDAD7D4D1CECCC9C6C3C1BEBBB9B6B4B1AFADAAA8 ),
    .INIT_0E ( 256'h585653514F4C4A4745423F3D3A3734322F2C292623201D1A1714110E0B080502 ),
    .INIT_0F ( 256'h7E7E7E7E7D7D7C7C7B7B7A7978777675747371706E6D6B6A68666462605E5C5A ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .RAM_MODE ( "TDP" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "ALL" ))
  blk00000003 (
    .RSTBRST(sig00000001),
    .ENBRDEN(ce),
    .REGCEA(sig00000001),
    .ENAWREN(ce),
    .CLKAWRCLK(clk),
    .CLKBRDCLK(clk),
    .REGCEBREGCE(sig00000001),
    .RSTA(sig00000001),
    .WEAWEL({sig00000001, sig00000001}),
    .DOADO({\NLW_blk00000003_DOADO<15>_UNCONNECTED , \NLW_blk00000003_DOADO<14>_UNCONNECTED , \NLW_blk00000003_DOADO<13>_UNCONNECTED , 
\NLW_blk00000003_DOADO<12>_UNCONNECTED , \NLW_blk00000003_DOADO<11>_UNCONNECTED , \NLW_blk00000003_DOADO<10>_UNCONNECTED , 
\NLW_blk00000003_DOADO<9>_UNCONNECTED , \NLW_blk00000003_DOADO<8>_UNCONNECTED , sine[7], sine[6], sine[5], sine[4], sine[3], sine[2], sine[1], sine[0]
}),
    .DOPADOP({\NLW_blk00000003_DOPADOP<1>_UNCONNECTED , \NLW_blk00000003_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\NLW_blk00000003_DOPBDOP<1>_UNCONNECTED , \NLW_blk00000003_DOPBDOP<0>_UNCONNECTED }),
    .WEBWEU({sig00000001, sig00000001}),
    .ADDRAWRADDR({sig00000001, sig00000001, sig00000002, sig00000003, sig00000004, sig00000005, sig00000006, sig00000007, sig00000008, sig00000009, 
\NLW_blk00000003_ADDRAWRADDR<2>_UNCONNECTED , \NLW_blk00000003_ADDRAWRADDR<1>_UNCONNECTED , \NLW_blk00000003_ADDRAWRADDR<0>_UNCONNECTED }),
    .DIPBDIP({\NLW_blk00000003_DIPBDIP<1>_UNCONNECTED , \NLW_blk00000003_DIPBDIP<0>_UNCONNECTED }),
    .DIBDI({\NLW_blk00000003_DIBDI<15>_UNCONNECTED , \NLW_blk00000003_DIBDI<14>_UNCONNECTED , \NLW_blk00000003_DIBDI<13>_UNCONNECTED , 
\NLW_blk00000003_DIBDI<12>_UNCONNECTED , \NLW_blk00000003_DIBDI<11>_UNCONNECTED , \NLW_blk00000003_DIBDI<10>_UNCONNECTED , 
\NLW_blk00000003_DIBDI<9>_UNCONNECTED , \NLW_blk00000003_DIBDI<8>_UNCONNECTED , \NLW_blk00000003_DIBDI<7>_UNCONNECTED , 
\NLW_blk00000003_DIBDI<6>_UNCONNECTED , \NLW_blk00000003_DIBDI<5>_UNCONNECTED , \NLW_blk00000003_DIBDI<4>_UNCONNECTED , 
\NLW_blk00000003_DIBDI<3>_UNCONNECTED , \NLW_blk00000003_DIBDI<2>_UNCONNECTED , \NLW_blk00000003_DIBDI<1>_UNCONNECTED , 
\NLW_blk00000003_DIBDI<0>_UNCONNECTED }),
    .DIADI({\NLW_blk00000003_DIADI<15>_UNCONNECTED , \NLW_blk00000003_DIADI<14>_UNCONNECTED , \NLW_blk00000003_DIADI<13>_UNCONNECTED , 
\NLW_blk00000003_DIADI<12>_UNCONNECTED , \NLW_blk00000003_DIADI<11>_UNCONNECTED , \NLW_blk00000003_DIADI<10>_UNCONNECTED , 
\NLW_blk00000003_DIADI<9>_UNCONNECTED , \NLW_blk00000003_DIADI<8>_UNCONNECTED , sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, 
sig00000001, sig00000001, sig00000001}),
    .ADDRBRDADDR({sig00000001, NlwRenamedSig_OI_rfd, sig00000002, sig00000003, sig00000004, sig00000005, sig00000006, sig00000007, sig00000008, 
sig00000009, \NLW_blk00000003_ADDRBRDADDR<2>_UNCONNECTED , \NLW_blk00000003_ADDRBRDADDR<1>_UNCONNECTED , \NLW_blk00000003_ADDRBRDADDR<0>_UNCONNECTED 
}),
    .DOBDO({\NLW_blk00000003_DOBDO<15>_UNCONNECTED , \NLW_blk00000003_DOBDO<14>_UNCONNECTED , \NLW_blk00000003_DOBDO<13>_UNCONNECTED , 
\NLW_blk00000003_DOBDO<12>_UNCONNECTED , \NLW_blk00000003_DOBDO<11>_UNCONNECTED , \NLW_blk00000003_DOBDO<10>_UNCONNECTED , 
\NLW_blk00000003_DOBDO<9>_UNCONNECTED , \NLW_blk00000003_DOBDO<8>_UNCONNECTED , cosine[7], cosine[6], cosine[5], cosine[4], cosine[3], cosine[2], 
cosine[1], cosine[0]}),
    .DIPADIP({\NLW_blk00000003_DIPADIP<1>_UNCONNECTED , sig00000001})
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .CE(ce),
    .D(sig00000047),
    .R(sclr),
    .Q(\U0/i_synth/i_rdy.i_single_channel.i_non_trivial_lat.i_rdy/opt_has_pipe.first_q )
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[0]),
    .Q(sig00000027)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[1]),
    .Q(sig00000026)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[2]),
    .Q(sig00000025)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[3]),
    .Q(sig00000024)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[4]),
    .Q(sig00000023)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .CE(sig0000005e),
    .D(data[5]),
    .Q(sig00000022)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .CE(sig0000005e),
    .D(data[6]),
    .Q(sig00000021)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .CE(sig0000005e),
    .D(data[7]),
    .Q(sig00000020)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(sig0000005e),
    .D(data[8]),
    .Q(sig0000001f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(sig0000005e),
    .D(data[9]),
    .Q(sig0000001e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(sig0000005e),
    .D(data[10]),
    .Q(sig0000001d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[11]),
    .Q(sig0000001c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[12]),
    .Q(sig0000001b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[13]),
    .Q(sig0000001a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[14]),
    .Q(sig00000019)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[15]),
    .Q(sig00000018)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[16]),
    .Q(sig00000017)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[17]),
    .Q(sig00000016)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[18]),
    .Q(sig00000015)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[19]),
    .Q(sig00000014)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[20]),
    .Q(sig00000013)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .CE(sig0000005e),
    .D(data[21]),
    .Q(sig00000012)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .CE(sig0000005e),
    .D(data[22]),
    .Q(sig00000011)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .CE(sig0000005e),
    .D(data[23]),
    .Q(sig00000010)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001d (
    .C(clk),
    .CE(sig0000005e),
    .D(data[24]),
    .Q(sig0000000f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .CE(sig0000005e),
    .D(data[25]),
    .Q(sig0000000e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000001f (
    .C(clk),
    .CE(sig0000005e),
    .D(data[26]),
    .Q(sig0000000d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[27]),
    .Q(sig0000000c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000021 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[28]),
    .Q(sig0000000b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000022 (
    .C(clk),
    .CE(sig0000005e),
    .D(data[29]),
    .Q(sig0000000a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000023 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[0]),
    .Q(sig00000060)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[1]),
    .Q(sig00000061)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000025 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[2]),
    .Q(sig00000062)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[3]),
    .Q(sig00000063)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000027 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[4]),
    .Q(sig00000064)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[5]),
    .Q(sig00000065)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000029 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[6]),
    .Q(sig00000066)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .CE(sig0000005f),
    .D(data[7]),
    .Q(sig00000067)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002b (
    .C(clk),
    .CE(sig0000005f),
    .D(data[8]),
    .Q(sig00000068)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002c (
    .C(clk),
    .CE(sig0000005f),
    .D(data[9]),
    .Q(sig00000069)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002d (
    .C(clk),
    .CE(sig0000005f),
    .D(data[10]),
    .Q(sig0000006a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002e (
    .C(clk),
    .CE(sig0000005f),
    .D(data[11]),
    .Q(sig0000006b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .CE(sig0000005f),
    .D(data[12]),
    .Q(sig0000006c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[13]),
    .Q(sig0000006d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[14]),
    .Q(sig0000006e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[15]),
    .Q(sig0000006f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[16]),
    .Q(sig00000070)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[17]),
    .Q(sig00000071)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[18]),
    .Q(sig00000072)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[19]),
    .Q(sig00000073)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[20]),
    .Q(sig00000074)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[21]),
    .Q(sig00000075)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[22]),
    .Q(sig00000076)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(clk),
    .CE(sig0000005f),
    .D(data[23]),
    .Q(sig00000077)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(clk),
    .CE(sig0000005f),
    .D(data[24]),
    .Q(sig00000078)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(clk),
    .CE(sig0000005f),
    .D(data[25]),
    .Q(sig00000079)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(clk),
    .CE(sig0000005f),
    .D(data[26]),
    .Q(sig0000007a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(clk),
    .CE(sig0000005f),
    .D(data[27]),
    .Q(sig0000007b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003f (
    .C(clk),
    .CE(sig0000005f),
    .D(data[28]),
    .Q(sig0000007c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000040 (
    .C(clk),
    .CE(sig0000005f),
    .D(data[29]),
    .Q(sig0000007d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000041 (
    .C(clk),
    .CE(ce),
    .D(sig00000028),
    .R(sclr),
    .Q(sig0000009c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000042 (
    .C(clk),
    .CE(ce),
    .D(sig00000029),
    .R(sclr),
    .Q(sig0000009b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000043 (
    .C(clk),
    .CE(ce),
    .D(sig0000002a),
    .R(sclr),
    .Q(sig0000009a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000044 (
    .C(clk),
    .CE(ce),
    .D(sig0000002b),
    .R(sclr),
    .Q(sig00000099)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000045 (
    .C(clk),
    .CE(ce),
    .D(sig0000002c),
    .R(sclr),
    .Q(sig00000098)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000046 (
    .C(clk),
    .CE(ce),
    .D(sig0000002d),
    .R(sclr),
    .Q(sig00000097)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000047 (
    .C(clk),
    .CE(ce),
    .D(sig0000002e),
    .R(sclr),
    .Q(sig00000096)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .CE(ce),
    .D(sig0000002f),
    .R(sclr),
    .Q(sig00000095)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000049 (
    .C(clk),
    .CE(ce),
    .D(sig00000030),
    .R(sclr),
    .Q(sig00000094)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000004a (
    .C(clk),
    .CE(ce),
    .D(sig00000031),
    .R(sclr),
    .Q(sig00000093)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000004b (
    .C(clk),
    .CE(ce),
    .D(sig00000032),
    .R(sclr),
    .Q(sig00000092)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000004c (
    .C(clk),
    .CE(ce),
    .D(sig00000033),
    .R(sclr),
    .Q(sig00000091)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000004d (
    .C(clk),
    .CE(ce),
    .D(sig00000034),
    .R(sclr),
    .Q(sig00000090)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000004e (
    .C(clk),
    .CE(ce),
    .D(sig00000035),
    .R(sclr),
    .Q(sig0000008f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000004f (
    .C(clk),
    .CE(ce),
    .D(sig00000036),
    .R(sclr),
    .Q(sig0000008e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .CE(ce),
    .D(sig00000037),
    .R(sclr),
    .Q(sig0000008d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .CE(ce),
    .D(sig00000038),
    .R(sclr),
    .Q(sig0000008c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .CE(ce),
    .D(sig00000039),
    .R(sclr),
    .Q(sig0000008b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .CE(ce),
    .D(sig0000003a),
    .R(sclr),
    .Q(sig0000008a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .CE(ce),
    .D(sig0000003b),
    .R(sclr),
    .Q(sig00000089)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .CE(ce),
    .D(sig0000003c),
    .R(sclr),
    .Q(sig00000088)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .CE(ce),
    .D(sig0000003d),
    .R(sclr),
    .Q(sig00000087)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .CE(ce),
    .D(sig0000003e),
    .R(sclr),
    .Q(sig00000086)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .CE(ce),
    .D(sig0000003f),
    .R(sclr),
    .Q(sig00000085)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .CE(ce),
    .D(sig00000040),
    .R(sclr),
    .Q(sig00000084)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005a (
    .C(clk),
    .CE(ce),
    .D(sig00000041),
    .R(sclr),
    .Q(sig00000083)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .CE(ce),
    .D(sig00000042),
    .R(sclr),
    .Q(sig00000082)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005c (
    .C(clk),
    .CE(ce),
    .D(sig00000043),
    .R(sclr),
    .Q(sig00000081)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .CE(ce),
    .D(sig00000044),
    .R(sclr),
    .Q(sig00000080)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005e (
    .C(clk),
    .CE(ce),
    .D(sig00000045),
    .R(sclr),
    .Q(sig0000007f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000005f (
    .C(clk),
    .CE(ce),
    .D(sig00000046),
    .R(sclr),
    .Q(sig0000007e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000115 (
    .C(clk),
    .CE(ce),
    .D(sig00000002),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000116 (
    .C(clk),
    .CE(ce),
    .D(sig00000003),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000117 (
    .C(clk),
    .CE(ce),
    .D(sig00000004),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000118 (
    .C(clk),
    .CE(ce),
    .D(sig00000005),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000119 (
    .C(clk),
    .CE(ce),
    .D(sig00000006),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011a (
    .C(clk),
    .CE(ce),
    .D(sig00000007),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011b (
    .C(clk),
    .CE(ce),
    .D(sig00000008),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011c (
    .C(clk),
    .CE(ce),
    .D(sig00000009),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011d (
    .C(clk),
    .CE(ce),
    .D(sig0000005d),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011e (
    .C(clk),
    .CE(ce),
    .D(sig0000005c),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000011f (
    .C(clk),
    .CE(ce),
    .D(sig0000005b),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000120 (
    .C(clk),
    .CE(ce),
    .D(sig0000005a),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000121 (
    .C(clk),
    .CE(ce),
    .D(sig00000059),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000122 (
    .C(clk),
    .CE(ce),
    .D(sig00000058),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000123 (
    .C(clk),
    .CE(ce),
    .D(sig00000057),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000124 (
    .C(clk),
    .CE(ce),
    .D(sig00000056),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000125 (
    .C(clk),
    .CE(ce),
    .D(sig00000055),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000126 (
    .C(clk),
    .CE(ce),
    .D(sig00000054),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000127 (
    .C(clk),
    .CE(ce),
    .D(sig00000053),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000128 (
    .C(clk),
    .CE(ce),
    .D(sig00000052),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000129 (
    .C(clk),
    .CE(ce),
    .D(sig00000051),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012a (
    .C(clk),
    .CE(ce),
    .D(sig00000050),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012b (
    .C(clk),
    .CE(ce),
    .D(sig0000004f),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012c (
    .C(clk),
    .CE(ce),
    .D(sig0000004e),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012d (
    .C(clk),
    .CE(ce),
    .D(sig0000004d),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012e (
    .C(clk),
    .CE(ce),
    .D(sig0000004c),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000012f (
    .C(clk),
    .CE(ce),
    .D(sig0000004b),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000130 (
    .C(clk),
    .CE(ce),
    .D(sig0000004a),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000131 (
    .C(clk),
    .CE(ce),
    .D(sig00000049),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000132 (
    .C(clk),
    .CE(ce),
    .D(sig00000048),
    .Q(\U0/i_synth/i_phase_out.del/opt_has_pipe.first_q [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000133 (
    .I0(reg_select),
    .I1(we),
    .O(sig0000005e)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000134 (
    .I0(reg_select),
    .I1(we),
    .O(sig0000005f)
  );
  INV   blk00000135 (
    .I(sclr),
    .O(sig00000047)
  );
  XORCY   \blk00000060/blk000000ba  (
    .CI(\blk00000060/sig00000131 ),
    .LI(\blk00000060/sig00000132 ),
    .O(sig00000029)
  );
  MUXCY   \blk00000060/blk000000b9  (
    .CI(\blk00000060/sig00000131 ),
    .DI(sig0000009b),
    .S(\blk00000060/sig00000132 ),
    .O(sig00000028)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000b8  (
    .I0(sig0000009b),
    .I1(sig0000000a),
    .O(\blk00000060/sig00000132 )
  );
  XORCY   \blk00000060/blk000000b7  (
    .CI(\blk00000060/sig0000012f ),
    .LI(\blk00000060/sig00000130 ),
    .O(sig0000002a)
  );
  MUXCY   \blk00000060/blk000000b6  (
    .CI(\blk00000060/sig0000012f ),
    .DI(sig0000009a),
    .S(\blk00000060/sig00000130 ),
    .O(\blk00000060/sig00000131 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000b5  (
    .I0(sig0000009a),
    .I1(sig0000000b),
    .O(\blk00000060/sig00000130 )
  );
  XORCY   \blk00000060/blk000000b4  (
    .CI(\blk00000060/sig0000012d ),
    .LI(\blk00000060/sig0000012e ),
    .O(sig0000002b)
  );
  MUXCY   \blk00000060/blk000000b3  (
    .CI(\blk00000060/sig0000012d ),
    .DI(sig00000099),
    .S(\blk00000060/sig0000012e ),
    .O(\blk00000060/sig0000012f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000b2  (
    .I0(sig00000099),
    .I1(sig0000000c),
    .O(\blk00000060/sig0000012e )
  );
  XORCY   \blk00000060/blk000000b1  (
    .CI(\blk00000060/sig0000012b ),
    .LI(\blk00000060/sig0000012c ),
    .O(sig0000002c)
  );
  MUXCY   \blk00000060/blk000000b0  (
    .CI(\blk00000060/sig0000012b ),
    .DI(sig00000098),
    .S(\blk00000060/sig0000012c ),
    .O(\blk00000060/sig0000012d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000af  (
    .I0(sig00000098),
    .I1(sig0000000d),
    .O(\blk00000060/sig0000012c )
  );
  XORCY   \blk00000060/blk000000ae  (
    .CI(\blk00000060/sig00000129 ),
    .LI(\blk00000060/sig0000012a ),
    .O(sig0000002d)
  );
  MUXCY   \blk00000060/blk000000ad  (
    .CI(\blk00000060/sig00000129 ),
    .DI(sig00000097),
    .S(\blk00000060/sig0000012a ),
    .O(\blk00000060/sig0000012b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000ac  (
    .I0(sig00000097),
    .I1(sig0000000e),
    .O(\blk00000060/sig0000012a )
  );
  XORCY   \blk00000060/blk000000ab  (
    .CI(\blk00000060/sig00000127 ),
    .LI(\blk00000060/sig00000128 ),
    .O(sig0000002e)
  );
  MUXCY   \blk00000060/blk000000aa  (
    .CI(\blk00000060/sig00000127 ),
    .DI(sig00000096),
    .S(\blk00000060/sig00000128 ),
    .O(\blk00000060/sig00000129 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000a9  (
    .I0(sig00000096),
    .I1(sig0000000f),
    .O(\blk00000060/sig00000128 )
  );
  XORCY   \blk00000060/blk000000a8  (
    .CI(\blk00000060/sig00000125 ),
    .LI(\blk00000060/sig00000126 ),
    .O(sig0000002f)
  );
  MUXCY   \blk00000060/blk000000a7  (
    .CI(\blk00000060/sig00000125 ),
    .DI(sig00000095),
    .S(\blk00000060/sig00000126 ),
    .O(\blk00000060/sig00000127 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000a6  (
    .I0(sig00000095),
    .I1(sig00000010),
    .O(\blk00000060/sig00000126 )
  );
  XORCY   \blk00000060/blk000000a5  (
    .CI(\blk00000060/sig00000123 ),
    .LI(\blk00000060/sig00000124 ),
    .O(sig00000030)
  );
  MUXCY   \blk00000060/blk000000a4  (
    .CI(\blk00000060/sig00000123 ),
    .DI(sig00000094),
    .S(\blk00000060/sig00000124 ),
    .O(\blk00000060/sig00000125 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000a3  (
    .I0(sig00000094),
    .I1(sig00000011),
    .O(\blk00000060/sig00000124 )
  );
  XORCY   \blk00000060/blk000000a2  (
    .CI(\blk00000060/sig00000121 ),
    .LI(\blk00000060/sig00000122 ),
    .O(sig00000031)
  );
  MUXCY   \blk00000060/blk000000a1  (
    .CI(\blk00000060/sig00000121 ),
    .DI(sig00000093),
    .S(\blk00000060/sig00000122 ),
    .O(\blk00000060/sig00000123 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk000000a0  (
    .I0(sig00000093),
    .I1(sig00000012),
    .O(\blk00000060/sig00000122 )
  );
  XORCY   \blk00000060/blk0000009f  (
    .CI(\blk00000060/sig0000011f ),
    .LI(\blk00000060/sig00000120 ),
    .O(sig00000032)
  );
  MUXCY   \blk00000060/blk0000009e  (
    .CI(\blk00000060/sig0000011f ),
    .DI(sig00000092),
    .S(\blk00000060/sig00000120 ),
    .O(\blk00000060/sig00000121 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000009d  (
    .I0(sig00000092),
    .I1(sig00000013),
    .O(\blk00000060/sig00000120 )
  );
  XORCY   \blk00000060/blk0000009c  (
    .CI(\blk00000060/sig0000011d ),
    .LI(\blk00000060/sig0000011e ),
    .O(sig00000033)
  );
  MUXCY   \blk00000060/blk0000009b  (
    .CI(\blk00000060/sig0000011d ),
    .DI(sig00000091),
    .S(\blk00000060/sig0000011e ),
    .O(\blk00000060/sig0000011f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000009a  (
    .I0(sig00000091),
    .I1(sig00000014),
    .O(\blk00000060/sig0000011e )
  );
  XORCY   \blk00000060/blk00000099  (
    .CI(\blk00000060/sig0000011b ),
    .LI(\blk00000060/sig0000011c ),
    .O(sig00000034)
  );
  MUXCY   \blk00000060/blk00000098  (
    .CI(\blk00000060/sig0000011b ),
    .DI(sig00000090),
    .S(\blk00000060/sig0000011c ),
    .O(\blk00000060/sig0000011d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000097  (
    .I0(sig00000090),
    .I1(sig00000015),
    .O(\blk00000060/sig0000011c )
  );
  XORCY   \blk00000060/blk00000096  (
    .CI(\blk00000060/sig00000119 ),
    .LI(\blk00000060/sig0000011a ),
    .O(sig00000035)
  );
  MUXCY   \blk00000060/blk00000095  (
    .CI(\blk00000060/sig00000119 ),
    .DI(sig0000008f),
    .S(\blk00000060/sig0000011a ),
    .O(\blk00000060/sig0000011b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000094  (
    .I0(sig0000008f),
    .I1(sig00000016),
    .O(\blk00000060/sig0000011a )
  );
  XORCY   \blk00000060/blk00000093  (
    .CI(\blk00000060/sig00000117 ),
    .LI(\blk00000060/sig00000118 ),
    .O(sig00000036)
  );
  MUXCY   \blk00000060/blk00000092  (
    .CI(\blk00000060/sig00000117 ),
    .DI(sig0000008e),
    .S(\blk00000060/sig00000118 ),
    .O(\blk00000060/sig00000119 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000091  (
    .I0(sig0000008e),
    .I1(sig00000017),
    .O(\blk00000060/sig00000118 )
  );
  XORCY   \blk00000060/blk00000090  (
    .CI(\blk00000060/sig00000115 ),
    .LI(\blk00000060/sig00000116 ),
    .O(sig00000037)
  );
  MUXCY   \blk00000060/blk0000008f  (
    .CI(\blk00000060/sig00000115 ),
    .DI(sig0000008d),
    .S(\blk00000060/sig00000116 ),
    .O(\blk00000060/sig00000117 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000008e  (
    .I0(sig0000008d),
    .I1(sig00000018),
    .O(\blk00000060/sig00000116 )
  );
  XORCY   \blk00000060/blk0000008d  (
    .CI(\blk00000060/sig00000113 ),
    .LI(\blk00000060/sig00000114 ),
    .O(sig00000038)
  );
  MUXCY   \blk00000060/blk0000008c  (
    .CI(\blk00000060/sig00000113 ),
    .DI(sig0000008c),
    .S(\blk00000060/sig00000114 ),
    .O(\blk00000060/sig00000115 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000008b  (
    .I0(sig0000008c),
    .I1(sig00000019),
    .O(\blk00000060/sig00000114 )
  );
  XORCY   \blk00000060/blk0000008a  (
    .CI(\blk00000060/sig00000111 ),
    .LI(\blk00000060/sig00000112 ),
    .O(sig00000039)
  );
  MUXCY   \blk00000060/blk00000089  (
    .CI(\blk00000060/sig00000111 ),
    .DI(sig0000008b),
    .S(\blk00000060/sig00000112 ),
    .O(\blk00000060/sig00000113 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000088  (
    .I0(sig0000008b),
    .I1(sig0000001a),
    .O(\blk00000060/sig00000112 )
  );
  XORCY   \blk00000060/blk00000087  (
    .CI(\blk00000060/sig0000010f ),
    .LI(\blk00000060/sig00000110 ),
    .O(sig0000003a)
  );
  MUXCY   \blk00000060/blk00000086  (
    .CI(\blk00000060/sig0000010f ),
    .DI(sig0000008a),
    .S(\blk00000060/sig00000110 ),
    .O(\blk00000060/sig00000111 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000085  (
    .I0(sig0000008a),
    .I1(sig0000001b),
    .O(\blk00000060/sig00000110 )
  );
  XORCY   \blk00000060/blk00000084  (
    .CI(\blk00000060/sig0000010d ),
    .LI(\blk00000060/sig0000010e ),
    .O(sig0000003b)
  );
  MUXCY   \blk00000060/blk00000083  (
    .CI(\blk00000060/sig0000010d ),
    .DI(sig00000089),
    .S(\blk00000060/sig0000010e ),
    .O(\blk00000060/sig0000010f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000082  (
    .I0(sig00000089),
    .I1(sig0000001c),
    .O(\blk00000060/sig0000010e )
  );
  XORCY   \blk00000060/blk00000081  (
    .CI(\blk00000060/sig0000010b ),
    .LI(\blk00000060/sig0000010c ),
    .O(sig0000003c)
  );
  MUXCY   \blk00000060/blk00000080  (
    .CI(\blk00000060/sig0000010b ),
    .DI(sig00000088),
    .S(\blk00000060/sig0000010c ),
    .O(\blk00000060/sig0000010d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000007f  (
    .I0(sig00000088),
    .I1(sig0000001d),
    .O(\blk00000060/sig0000010c )
  );
  XORCY   \blk00000060/blk0000007e  (
    .CI(\blk00000060/sig00000109 ),
    .LI(\blk00000060/sig0000010a ),
    .O(sig0000003d)
  );
  MUXCY   \blk00000060/blk0000007d  (
    .CI(\blk00000060/sig00000109 ),
    .DI(sig00000087),
    .S(\blk00000060/sig0000010a ),
    .O(\blk00000060/sig0000010b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000007c  (
    .I0(sig00000087),
    .I1(sig0000001e),
    .O(\blk00000060/sig0000010a )
  );
  XORCY   \blk00000060/blk0000007b  (
    .CI(\blk00000060/sig00000107 ),
    .LI(\blk00000060/sig00000108 ),
    .O(sig0000003e)
  );
  MUXCY   \blk00000060/blk0000007a  (
    .CI(\blk00000060/sig00000107 ),
    .DI(sig00000086),
    .S(\blk00000060/sig00000108 ),
    .O(\blk00000060/sig00000109 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000079  (
    .I0(sig00000086),
    .I1(sig0000001f),
    .O(\blk00000060/sig00000108 )
  );
  XORCY   \blk00000060/blk00000078  (
    .CI(\blk00000060/sig00000105 ),
    .LI(\blk00000060/sig00000106 ),
    .O(sig0000003f)
  );
  MUXCY   \blk00000060/blk00000077  (
    .CI(\blk00000060/sig00000105 ),
    .DI(sig00000085),
    .S(\blk00000060/sig00000106 ),
    .O(\blk00000060/sig00000107 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000076  (
    .I0(sig00000085),
    .I1(sig00000020),
    .O(\blk00000060/sig00000106 )
  );
  XORCY   \blk00000060/blk00000075  (
    .CI(\blk00000060/sig00000103 ),
    .LI(\blk00000060/sig00000104 ),
    .O(sig00000040)
  );
  MUXCY   \blk00000060/blk00000074  (
    .CI(\blk00000060/sig00000103 ),
    .DI(sig00000084),
    .S(\blk00000060/sig00000104 ),
    .O(\blk00000060/sig00000105 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000073  (
    .I0(sig00000084),
    .I1(sig00000021),
    .O(\blk00000060/sig00000104 )
  );
  XORCY   \blk00000060/blk00000072  (
    .CI(\blk00000060/sig00000101 ),
    .LI(\blk00000060/sig00000102 ),
    .O(sig00000041)
  );
  MUXCY   \blk00000060/blk00000071  (
    .CI(\blk00000060/sig00000101 ),
    .DI(sig00000083),
    .S(\blk00000060/sig00000102 ),
    .O(\blk00000060/sig00000103 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000070  (
    .I0(sig00000083),
    .I1(sig00000022),
    .O(\blk00000060/sig00000102 )
  );
  XORCY   \blk00000060/blk0000006f  (
    .CI(\blk00000060/sig000000ff ),
    .LI(\blk00000060/sig00000100 ),
    .O(sig00000042)
  );
  MUXCY   \blk00000060/blk0000006e  (
    .CI(\blk00000060/sig000000ff ),
    .DI(sig00000082),
    .S(\blk00000060/sig00000100 ),
    .O(\blk00000060/sig00000101 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000006d  (
    .I0(sig00000082),
    .I1(sig00000023),
    .O(\blk00000060/sig00000100 )
  );
  XORCY   \blk00000060/blk0000006c  (
    .CI(\blk00000060/sig000000fd ),
    .LI(\blk00000060/sig000000fe ),
    .O(sig00000043)
  );
  MUXCY   \blk00000060/blk0000006b  (
    .CI(\blk00000060/sig000000fd ),
    .DI(sig00000081),
    .S(\blk00000060/sig000000fe ),
    .O(\blk00000060/sig000000ff )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk0000006a  (
    .I0(sig00000081),
    .I1(sig00000024),
    .O(\blk00000060/sig000000fe )
  );
  XORCY   \blk00000060/blk00000069  (
    .CI(\blk00000060/sig000000fb ),
    .LI(\blk00000060/sig000000fc ),
    .O(sig00000044)
  );
  MUXCY   \blk00000060/blk00000068  (
    .CI(\blk00000060/sig000000fb ),
    .DI(sig00000080),
    .S(\blk00000060/sig000000fc ),
    .O(\blk00000060/sig000000fd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000067  (
    .I0(sig00000080),
    .I1(sig00000025),
    .O(\blk00000060/sig000000fc )
  );
  XORCY   \blk00000060/blk00000066  (
    .CI(\blk00000060/sig000000f9 ),
    .LI(\blk00000060/sig000000fa ),
    .O(sig00000045)
  );
  MUXCY   \blk00000060/blk00000065  (
    .CI(\blk00000060/sig000000f9 ),
    .DI(sig0000007f),
    .S(\blk00000060/sig000000fa ),
    .O(\blk00000060/sig000000fb )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000064  (
    .I0(sig0000007f),
    .I1(sig00000026),
    .O(\blk00000060/sig000000fa )
  );
  XORCY   \blk00000060/blk00000063  (
    .CI(sig00000001),
    .LI(\blk00000060/sig000000f8 ),
    .O(sig00000046)
  );
  MUXCY   \blk00000060/blk00000062  (
    .CI(sig00000001),
    .DI(sig0000007e),
    .S(\blk00000060/sig000000f8 ),
    .O(\blk00000060/sig000000f9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000060/blk00000061  (
    .I0(sig0000007e),
    .I1(sig00000027),
    .O(\blk00000060/sig000000f8 )
  );
  XORCY   \blk000000bb/blk00000114  (
    .CI(\blk000000bb/sig000001c8 ),
    .LI(\blk000000bb/sig000001c9 ),
    .O(sig00000002)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk00000113  (
    .I0(sig0000009b),
    .I1(sig0000007d),
    .O(\blk000000bb/sig000001c9 )
  );
  XORCY   \blk000000bb/blk00000112  (
    .CI(\blk000000bb/sig000001c6 ),
    .LI(\blk000000bb/sig000001c7 ),
    .O(sig00000003)
  );
  MUXCY   \blk000000bb/blk00000111  (
    .CI(\blk000000bb/sig000001c6 ),
    .DI(sig0000009a),
    .S(\blk000000bb/sig000001c7 ),
    .O(\blk000000bb/sig000001c8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk00000110  (
    .I0(sig0000007c),
    .I1(sig0000009a),
    .O(\blk000000bb/sig000001c7 )
  );
  XORCY   \blk000000bb/blk0000010f  (
    .CI(\blk000000bb/sig000001c4 ),
    .LI(\blk000000bb/sig000001c5 ),
    .O(sig00000004)
  );
  MUXCY   \blk000000bb/blk0000010e  (
    .CI(\blk000000bb/sig000001c4 ),
    .DI(sig00000099),
    .S(\blk000000bb/sig000001c5 ),
    .O(\blk000000bb/sig000001c6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk0000010d  (
    .I0(sig0000007b),
    .I1(sig00000099),
    .O(\blk000000bb/sig000001c5 )
  );
  XORCY   \blk000000bb/blk0000010c  (
    .CI(\blk000000bb/sig000001c2 ),
    .LI(\blk000000bb/sig000001c3 ),
    .O(sig00000005)
  );
  MUXCY   \blk000000bb/blk0000010b  (
    .CI(\blk000000bb/sig000001c2 ),
    .DI(sig00000098),
    .S(\blk000000bb/sig000001c3 ),
    .O(\blk000000bb/sig000001c4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk0000010a  (
    .I0(sig0000007a),
    .I1(sig00000098),
    .O(\blk000000bb/sig000001c3 )
  );
  XORCY   \blk000000bb/blk00000109  (
    .CI(\blk000000bb/sig000001c0 ),
    .LI(\blk000000bb/sig000001c1 ),
    .O(sig00000006)
  );
  MUXCY   \blk000000bb/blk00000108  (
    .CI(\blk000000bb/sig000001c0 ),
    .DI(sig00000097),
    .S(\blk000000bb/sig000001c1 ),
    .O(\blk000000bb/sig000001c2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk00000107  (
    .I0(sig00000079),
    .I1(sig00000097),
    .O(\blk000000bb/sig000001c1 )
  );
  XORCY   \blk000000bb/blk00000106  (
    .CI(\blk000000bb/sig000001be ),
    .LI(\blk000000bb/sig000001bf ),
    .O(sig00000007)
  );
  MUXCY   \blk000000bb/blk00000105  (
    .CI(\blk000000bb/sig000001be ),
    .DI(sig00000096),
    .S(\blk000000bb/sig000001bf ),
    .O(\blk000000bb/sig000001c0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk00000104  (
    .I0(sig00000078),
    .I1(sig00000096),
    .O(\blk000000bb/sig000001bf )
  );
  XORCY   \blk000000bb/blk00000103  (
    .CI(\blk000000bb/sig000001bc ),
    .LI(\blk000000bb/sig000001bd ),
    .O(sig00000008)
  );
  MUXCY   \blk000000bb/blk00000102  (
    .CI(\blk000000bb/sig000001bc ),
    .DI(sig00000095),
    .S(\blk000000bb/sig000001bd ),
    .O(\blk000000bb/sig000001be )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk00000101  (
    .I0(sig00000077),
    .I1(sig00000095),
    .O(\blk000000bb/sig000001bd )
  );
  XORCY   \blk000000bb/blk00000100  (
    .CI(\blk000000bb/sig000001ba ),
    .LI(\blk000000bb/sig000001bb ),
    .O(sig00000009)
  );
  MUXCY   \blk000000bb/blk000000ff  (
    .CI(\blk000000bb/sig000001ba ),
    .DI(sig00000094),
    .S(\blk000000bb/sig000001bb ),
    .O(\blk000000bb/sig000001bc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000fe  (
    .I0(sig00000076),
    .I1(sig00000094),
    .O(\blk000000bb/sig000001bb )
  );
  XORCY   \blk000000bb/blk000000fd  (
    .CI(\blk000000bb/sig000001b8 ),
    .LI(\blk000000bb/sig000001b9 ),
    .O(sig0000005d)
  );
  MUXCY   \blk000000bb/blk000000fc  (
    .CI(\blk000000bb/sig000001b8 ),
    .DI(sig00000093),
    .S(\blk000000bb/sig000001b9 ),
    .O(\blk000000bb/sig000001ba )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000fb  (
    .I0(sig00000075),
    .I1(sig00000093),
    .O(\blk000000bb/sig000001b9 )
  );
  XORCY   \blk000000bb/blk000000fa  (
    .CI(\blk000000bb/sig000001b6 ),
    .LI(\blk000000bb/sig000001b7 ),
    .O(sig0000005c)
  );
  MUXCY   \blk000000bb/blk000000f9  (
    .CI(\blk000000bb/sig000001b6 ),
    .DI(sig00000092),
    .S(\blk000000bb/sig000001b7 ),
    .O(\blk000000bb/sig000001b8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000f8  (
    .I0(sig00000074),
    .I1(sig00000092),
    .O(\blk000000bb/sig000001b7 )
  );
  XORCY   \blk000000bb/blk000000f7  (
    .CI(\blk000000bb/sig000001b4 ),
    .LI(\blk000000bb/sig000001b5 ),
    .O(sig0000005b)
  );
  MUXCY   \blk000000bb/blk000000f6  (
    .CI(\blk000000bb/sig000001b4 ),
    .DI(sig00000091),
    .S(\blk000000bb/sig000001b5 ),
    .O(\blk000000bb/sig000001b6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000f5  (
    .I0(sig00000073),
    .I1(sig00000091),
    .O(\blk000000bb/sig000001b5 )
  );
  XORCY   \blk000000bb/blk000000f4  (
    .CI(\blk000000bb/sig000001b2 ),
    .LI(\blk000000bb/sig000001b3 ),
    .O(sig0000005a)
  );
  MUXCY   \blk000000bb/blk000000f3  (
    .CI(\blk000000bb/sig000001b2 ),
    .DI(sig00000090),
    .S(\blk000000bb/sig000001b3 ),
    .O(\blk000000bb/sig000001b4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000f2  (
    .I0(sig00000072),
    .I1(sig00000090),
    .O(\blk000000bb/sig000001b3 )
  );
  XORCY   \blk000000bb/blk000000f1  (
    .CI(\blk000000bb/sig000001b0 ),
    .LI(\blk000000bb/sig000001b1 ),
    .O(sig00000059)
  );
  MUXCY   \blk000000bb/blk000000f0  (
    .CI(\blk000000bb/sig000001b0 ),
    .DI(sig0000008f),
    .S(\blk000000bb/sig000001b1 ),
    .O(\blk000000bb/sig000001b2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000ef  (
    .I0(sig00000071),
    .I1(sig0000008f),
    .O(\blk000000bb/sig000001b1 )
  );
  XORCY   \blk000000bb/blk000000ee  (
    .CI(\blk000000bb/sig000001ae ),
    .LI(\blk000000bb/sig000001af ),
    .O(sig00000058)
  );
  MUXCY   \blk000000bb/blk000000ed  (
    .CI(\blk000000bb/sig000001ae ),
    .DI(sig0000008e),
    .S(\blk000000bb/sig000001af ),
    .O(\blk000000bb/sig000001b0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000ec  (
    .I0(sig00000070),
    .I1(sig0000008e),
    .O(\blk000000bb/sig000001af )
  );
  XORCY   \blk000000bb/blk000000eb  (
    .CI(\blk000000bb/sig000001ac ),
    .LI(\blk000000bb/sig000001ad ),
    .O(sig00000057)
  );
  MUXCY   \blk000000bb/blk000000ea  (
    .CI(\blk000000bb/sig000001ac ),
    .DI(sig0000008d),
    .S(\blk000000bb/sig000001ad ),
    .O(\blk000000bb/sig000001ae )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000e9  (
    .I0(sig0000006f),
    .I1(sig0000008d),
    .O(\blk000000bb/sig000001ad )
  );
  XORCY   \blk000000bb/blk000000e8  (
    .CI(\blk000000bb/sig000001aa ),
    .LI(\blk000000bb/sig000001ab ),
    .O(sig00000056)
  );
  MUXCY   \blk000000bb/blk000000e7  (
    .CI(\blk000000bb/sig000001aa ),
    .DI(sig0000008c),
    .S(\blk000000bb/sig000001ab ),
    .O(\blk000000bb/sig000001ac )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000e6  (
    .I0(sig0000006e),
    .I1(sig0000008c),
    .O(\blk000000bb/sig000001ab )
  );
  XORCY   \blk000000bb/blk000000e5  (
    .CI(\blk000000bb/sig000001a8 ),
    .LI(\blk000000bb/sig000001a9 ),
    .O(sig00000055)
  );
  MUXCY   \blk000000bb/blk000000e4  (
    .CI(\blk000000bb/sig000001a8 ),
    .DI(sig0000008b),
    .S(\blk000000bb/sig000001a9 ),
    .O(\blk000000bb/sig000001aa )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000e3  (
    .I0(sig0000006d),
    .I1(sig0000008b),
    .O(\blk000000bb/sig000001a9 )
  );
  XORCY   \blk000000bb/blk000000e2  (
    .CI(\blk000000bb/sig000001a6 ),
    .LI(\blk000000bb/sig000001a7 ),
    .O(sig00000054)
  );
  MUXCY   \blk000000bb/blk000000e1  (
    .CI(\blk000000bb/sig000001a6 ),
    .DI(sig0000008a),
    .S(\blk000000bb/sig000001a7 ),
    .O(\blk000000bb/sig000001a8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000e0  (
    .I0(sig0000006c),
    .I1(sig0000008a),
    .O(\blk000000bb/sig000001a7 )
  );
  XORCY   \blk000000bb/blk000000df  (
    .CI(\blk000000bb/sig000001a4 ),
    .LI(\blk000000bb/sig000001a5 ),
    .O(sig00000053)
  );
  MUXCY   \blk000000bb/blk000000de  (
    .CI(\blk000000bb/sig000001a4 ),
    .DI(sig00000089),
    .S(\blk000000bb/sig000001a5 ),
    .O(\blk000000bb/sig000001a6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000dd  (
    .I0(sig0000006b),
    .I1(sig00000089),
    .O(\blk000000bb/sig000001a5 )
  );
  XORCY   \blk000000bb/blk000000dc  (
    .CI(\blk000000bb/sig000001a2 ),
    .LI(\blk000000bb/sig000001a3 ),
    .O(sig00000052)
  );
  MUXCY   \blk000000bb/blk000000db  (
    .CI(\blk000000bb/sig000001a2 ),
    .DI(sig00000088),
    .S(\blk000000bb/sig000001a3 ),
    .O(\blk000000bb/sig000001a4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000da  (
    .I0(sig0000006a),
    .I1(sig00000088),
    .O(\blk000000bb/sig000001a3 )
  );
  XORCY   \blk000000bb/blk000000d9  (
    .CI(\blk000000bb/sig000001a0 ),
    .LI(\blk000000bb/sig000001a1 ),
    .O(sig00000051)
  );
  MUXCY   \blk000000bb/blk000000d8  (
    .CI(\blk000000bb/sig000001a0 ),
    .DI(sig00000087),
    .S(\blk000000bb/sig000001a1 ),
    .O(\blk000000bb/sig000001a2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000d7  (
    .I0(sig00000069),
    .I1(sig00000087),
    .O(\blk000000bb/sig000001a1 )
  );
  XORCY   \blk000000bb/blk000000d6  (
    .CI(\blk000000bb/sig0000019e ),
    .LI(\blk000000bb/sig0000019f ),
    .O(sig00000050)
  );
  MUXCY   \blk000000bb/blk000000d5  (
    .CI(\blk000000bb/sig0000019e ),
    .DI(sig00000086),
    .S(\blk000000bb/sig0000019f ),
    .O(\blk000000bb/sig000001a0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000d4  (
    .I0(sig00000068),
    .I1(sig00000086),
    .O(\blk000000bb/sig0000019f )
  );
  XORCY   \blk000000bb/blk000000d3  (
    .CI(\blk000000bb/sig0000019c ),
    .LI(\blk000000bb/sig0000019d ),
    .O(sig0000004f)
  );
  MUXCY   \blk000000bb/blk000000d2  (
    .CI(\blk000000bb/sig0000019c ),
    .DI(sig00000085),
    .S(\blk000000bb/sig0000019d ),
    .O(\blk000000bb/sig0000019e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000d1  (
    .I0(sig00000067),
    .I1(sig00000085),
    .O(\blk000000bb/sig0000019d )
  );
  XORCY   \blk000000bb/blk000000d0  (
    .CI(\blk000000bb/sig0000019a ),
    .LI(\blk000000bb/sig0000019b ),
    .O(sig0000004e)
  );
  MUXCY   \blk000000bb/blk000000cf  (
    .CI(\blk000000bb/sig0000019a ),
    .DI(sig00000084),
    .S(\blk000000bb/sig0000019b ),
    .O(\blk000000bb/sig0000019c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000ce  (
    .I0(sig00000066),
    .I1(sig00000084),
    .O(\blk000000bb/sig0000019b )
  );
  XORCY   \blk000000bb/blk000000cd  (
    .CI(\blk000000bb/sig00000198 ),
    .LI(\blk000000bb/sig00000199 ),
    .O(sig0000004d)
  );
  MUXCY   \blk000000bb/blk000000cc  (
    .CI(\blk000000bb/sig00000198 ),
    .DI(sig00000083),
    .S(\blk000000bb/sig00000199 ),
    .O(\blk000000bb/sig0000019a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000cb  (
    .I0(sig00000065),
    .I1(sig00000083),
    .O(\blk000000bb/sig00000199 )
  );
  XORCY   \blk000000bb/blk000000ca  (
    .CI(\blk000000bb/sig00000196 ),
    .LI(\blk000000bb/sig00000197 ),
    .O(sig0000004c)
  );
  MUXCY   \blk000000bb/blk000000c9  (
    .CI(\blk000000bb/sig00000196 ),
    .DI(sig00000082),
    .S(\blk000000bb/sig00000197 ),
    .O(\blk000000bb/sig00000198 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000c8  (
    .I0(sig00000064),
    .I1(sig00000082),
    .O(\blk000000bb/sig00000197 )
  );
  XORCY   \blk000000bb/blk000000c7  (
    .CI(\blk000000bb/sig00000194 ),
    .LI(\blk000000bb/sig00000195 ),
    .O(sig0000004b)
  );
  MUXCY   \blk000000bb/blk000000c6  (
    .CI(\blk000000bb/sig00000194 ),
    .DI(sig00000081),
    .S(\blk000000bb/sig00000195 ),
    .O(\blk000000bb/sig00000196 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000c5  (
    .I0(sig00000063),
    .I1(sig00000081),
    .O(\blk000000bb/sig00000195 )
  );
  XORCY   \blk000000bb/blk000000c4  (
    .CI(\blk000000bb/sig00000192 ),
    .LI(\blk000000bb/sig00000193 ),
    .O(sig0000004a)
  );
  MUXCY   \blk000000bb/blk000000c3  (
    .CI(\blk000000bb/sig00000192 ),
    .DI(sig00000080),
    .S(\blk000000bb/sig00000193 ),
    .O(\blk000000bb/sig00000194 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000c2  (
    .I0(sig00000062),
    .I1(sig00000080),
    .O(\blk000000bb/sig00000193 )
  );
  XORCY   \blk000000bb/blk000000c1  (
    .CI(\blk000000bb/sig00000190 ),
    .LI(\blk000000bb/sig00000191 ),
    .O(sig00000049)
  );
  MUXCY   \blk000000bb/blk000000c0  (
    .CI(\blk000000bb/sig00000190 ),
    .DI(sig0000007f),
    .S(\blk000000bb/sig00000191 ),
    .O(\blk000000bb/sig00000192 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000bf  (
    .I0(sig00000061),
    .I1(sig0000007f),
    .O(\blk000000bb/sig00000191 )
  );
  XORCY   \blk000000bb/blk000000be  (
    .CI(sig00000001),
    .LI(\blk000000bb/sig0000018f ),
    .O(sig00000048)
  );
  MUXCY   \blk000000bb/blk000000bd  (
    .CI(sig00000001),
    .DI(sig0000007e),
    .S(\blk000000bb/sig0000018f ),
    .O(\blk000000bb/sig00000190 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk000000bb/blk000000bc  (
    .I0(sig00000060),
    .I1(sig0000007e),
    .O(\blk000000bb/sig0000018f )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
