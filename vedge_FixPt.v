// -------------------------------------------------------------
// 
// File Name: G:\AI\IIT BHU\codegen\vedge\hdlsrc\vedge_FixPt.v
// Created: 2016-07-02 16:41:14
// 
// Generated by MATLAB 8.1, MATLAB Coder 2.4 and HDL Coder 3.2
// 
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Design base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// p1_out                        ce_out        1
// p2_out                        ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: vedge_FixPt
// Source Path: vedge_FixPt
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module vedge_FixPt
          (
           clk,
           reset,
           clk_enable,
           b1_in,
           b2_in,
           ce_out,
           p1_out,
           p2_out
          );


  input   clk;
  input   reset;
  input   clk_enable;
  input   [7:0] b1_in;  // ufix8
  input   [7:0] b2_in;  // ufix8
  output  ce_out;
  output  signed [8:0] p1_out;  // sfix9
  output  [7:0] p2_out;  // ufix8


  wire enb;
  reg signed [8:0] p1_out_1;  // sfix9
  reg [7:0] p2_out_1;  // ufix8
  reg [7:0] vedge_FixPt_BSI_1 [0:1];  // ufix8 [2]
  reg signed [10:0] vedge_FixPt_c_1 [0:3];  // sfix11 [4]
  reg signed [8:0] vedge_FixPt_OrigImg_1_1 [0:3];  // sfix9 [4]
  reg signed [31:0] vedge_FixPt_m_1;  // int32
  reg signed [31:0] vedge_FixPt_l_1;  // int32
  reg signed [31:0] vedge_FixPt_t_0_1;  // int32
  reg signed [31:0] vedge_FixPt_t_1_1;  // int32
  reg signed [2:0] vedge_FixPt_t_2_1 [0:1];  // sfix3 [2]
  reg signed [63:0] vedge_FixPt_add_cast_2 [0:1];  // sfix64 [2]
  reg signed [63:0] vedge_FixPt_add_cast_0_1 [0:1];  // sfix64 [2]
  reg signed [10:0] vedge_FixPt_add_cast_1_1 [0:1];  // sfix11 [2]


  assign enb = clk_enable;

  always @(b1_in, b2_in) begin
    vedge_FixPt_t_2_1[0] = 3'sb111;
    vedge_FixPt_t_2_1[1] = 3'sb001;
    //spssa
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    //                                                                          %
    //        Generated by MATLAB 8.1, MATLAB Coder 2.4 and HDL Coder 3.2      %
    //                                                                          %
    //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    vedge_FixPt_BSI_1[0] = b1_in;
    vedge_FixPt_BSI_1[1] = b2_in;

    for(vedge_FixPt_t_0_1 = 0; vedge_FixPt_t_0_1 <= 3; vedge_FixPt_t_0_1 = vedge_FixPt_t_0_1 + 1) begin
      vedge_FixPt_c_1[vedge_FixPt_t_0_1] = 11'sb00000000000;
    end


    for(vedge_FixPt_l_1 = 0; vedge_FixPt_l_1 <= 1; vedge_FixPt_l_1 = vedge_FixPt_l_1 + 1) begin
      for(vedge_FixPt_m_1 = 0; vedge_FixPt_m_1 <= 1; vedge_FixPt_m_1 = vedge_FixPt_m_1 + 1) begin
        vedge_FixPt_add_cast_2[vedge_FixPt_m_1] = {{31{vedge_FixPt_m_1[31]}}, {vedge_FixPt_m_1, 1'b0}};
        vedge_FixPt_add_cast_0_1[vedge_FixPt_m_1] = {{31{vedge_FixPt_m_1[31]}}, {vedge_FixPt_m_1, 1'b0}};
        vedge_FixPt_add_cast_1_1[vedge_FixPt_m_1] = vedge_FixPt_t_2_1[vedge_FixPt_l_1] * $signed({1'b0, vedge_FixPt_BSI_1[vedge_FixPt_m_1]});
        vedge_FixPt_c_1[vedge_FixPt_l_1 + vedge_FixPt_add_cast_2[vedge_FixPt_m_1]] = vedge_FixPt_c_1[vedge_FixPt_l_1 + vedge_FixPt_add_cast_0_1[vedge_FixPt_m_1]] + vedge_FixPt_add_cast_1_1[vedge_FixPt_m_1];
      end
    end


    for(vedge_FixPt_t_1_1 = 0; vedge_FixPt_t_1_1 <= 3; vedge_FixPt_t_1_1 = vedge_FixPt_t_1_1 + 1) begin
      vedge_FixPt_OrigImg_1_1[vedge_FixPt_t_1_1] = vedge_FixPt_c_1[vedge_FixPt_t_1_1][8:0];
    end

    //PD=abs((b1_in)-(b2_in));
    p1_out_1 = vedge_FixPt_OrigImg_1_1[0];
    p2_out_1 = vedge_FixPt_OrigImg_1_1[3][7:0];
  end



  assign ce_out = clk_enable;

  assign p1_out = p1_out_1;

  assign p2_out = p2_out_1;

endmodule  // vedge_FixPt
