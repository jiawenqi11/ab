module mult( clk, reset, A, B, PRODUCT );

  input clk;
  input reset;

  input [31 : 0] A;
  input [31 : 0] B;
  output [31 : 0] PRODUCT;

  // Your code begins here
  reg  [31:0]PRODUCT;
  reg [63:0]PRODUCT_0,PRODUCT_1,PRODUCT_2,PRODUCT_3,PRODUCT_4,PRODUCT_5,PRODUCT_6,PRODUCT_7,PRODUCT_8,PRODUCT_9,
            PRODUCT_10,PRODUCT_11,PRODUCT_12,PRODUCT_13,PRODUCT_14,PRODUCT_15,PRODUCT_16,PRODUCT_17,PRODUCT_18,PRODUCT_19,
            PRODUCT_20,PRODUCT_21,PRODUCT_22,PRODUCT_23,PRODUCT_24,PRODUCT_25,PRODUCT_26,PRODUCT_27,PRODUCT_28,PRODUCT_29,
            PRODUCT_30,PRODUCT_31;
  wire [63:0]SUM0_0,SUM0_1,SUM0_2,SUM0_3,SUM0_4,SUM0_5,SUM0_6,SUM0_7,SUM0_8,SUM0_9,SUM0_10,SUM0_11,SUM0_12,SUM0_13,SUM0_14,SUM0_15,
             SUM1_0,SUM1_1,SUM1_2,SUM1_3,SUM1_4,SUM1_5,SUM1_6,SUM1_7,
             SUM2_0,SUM2_1,SUM2_2,SUM2_3,
             SUM3_0,SUM3_1;
  reg  [63:0]SUM4_0;

  always @(posedge clk) begin
    if (reset)
      begin
        PRODUCT_0<=64'b0;
        PRODUCT_1<=64'b0;
        PRODUCT_2<=64'b0;
        PRODUCT_3<=64'b0;
        PRODUCT_4<=64'b0;
        PRODUCT_5<=64'b0;
        PRODUCT_6<=64'b0;
        PRODUCT_7<=64'b0;
        PRODUCT_8<=64'b0;
        PRODUCT_9<=64'b0;
        PRODUCT_10<=64'b0;
        PRODUCT_11<=64'b0;
        PRODUCT_12<=64'b0;
        PRODUCT_13<=64'b0;
        PRODUCT_14<=64'b0;
        PRODUCT_15<=64'b0;
        PRODUCT_16<=64'b0;
        PRODUCT_19<=64'b0;
        PRODUCT_17<=64'b0;
        PRODUCT_18<=64'b0;
        PRODUCT_19<=64'b0;
        PRODUCT_20<=64'b0;
        PRODUCT_21<=64'b0;
        PRODUCT_22<=64'b0;
        PRODUCT_23<=64'b0;
        PRODUCT_24<=64'b0;
        PRODUCT_25<=64'b0;
        PRODUCT_26<=64'b0;
        PRODUCT_27<=64'b0;
        PRODUCT_28<=64'b0;
        PRODUCT_29<=64'b0;
        PRODUCT_30<=64'b0;
        PRODUCT_31<=64'b0;
      end
    else
      begin
      PRODUCT_0<=B[0]?  {32'b0,A[31:0]}:64'b0;
      PRODUCT_1<=B[1]?  {31'b0,A[31:0], 1'b0}:64'b0;
      PRODUCT_2<=B[2]?  {30'b0,A[31:0], 2'b0}:64'b0;
      PRODUCT_3<=B[3]?  {29'b0,A[31:0], 3'b0}:64'b0;
      PRODUCT_4<=B[4]?  {28'b0,A[31:0], 4'b0}:64'b0;
      PRODUCT_5<=B[5]?  {27'b0,A[31:0], 5'b0}:64'b0;
      PRODUCT_6<=B[6]?  {26'b0,A[31:0], 6'b0}:64'b0;
      PRODUCT_7<=B[7]?  {25'b0,A[31:0], 7'b0}:64'b0;
      PRODUCT_8<=B[8]?  {24'b0,A[31:0], 8'b0}:64'b0;
      PRODUCT_9<=B[9]?  {23'b0,A[31:0], 9'b0}:64'b0;
      PRODUCT_10<=B[10]?{22'b0,A[31:0],10'b0}:64'b0;
      PRODUCT_11<=B[11]?{21'b0,A[31:0],11'b0}:64'b0;
      PRODUCT_12<=B[12]?{20'b0,A[31:0],12'b0}:64'b0;
      PRODUCT_13<=B[13]?{19'b0,A[31:0],13'b0}:64'b0;
      PRODUCT_14<=B[14]?{18'b0,A[31:0],14'b0}:64'b0;
      PRODUCT_15<=B[15]?{17'b0,A[31:0],15'b0}:64'b0;
      PRODUCT_16<=B[16]?{16'b0,A[31:0],16'b0}:64'b0;
      PRODUCT_19<=B[19]?{15'b0,A[31:0],17'b0}:64'b0;
      PRODUCT_17<=B[17]?{14'b0,A[31:0],18'b0}:64'b0;
      PRODUCT_18<=B[18]?{13'b0,A[31:0],19'b0}:64'b0;
      PRODUCT_19<=B[19]?{12'b0,A[31:0],20'b0}:64'b0;
      PRODUCT_20<=B[20]?{11'b0,A[31:0],21'b0}:64'b0;
      PRODUCT_21<=B[21]?{10'b0,A[31:0],22'b0}:64'b0;
      PRODUCT_22<=B[22]?{ 9'b0,A[31:0],23'b0}:64'b0;
      PRODUCT_23<=B[23]?{ 8'b0,A[31:0],24'b0}:64'b0;
      PRODUCT_24<=B[24]?{ 7'b0,A[31:0],25'b0}:64'b0;
      PRODUCT_25<=B[25]?{ 6'b0,A[31:0],26'b0}:64'b0;
      PRODUCT_26<=B[26]?{ 5'b0,A[31:0],27'b0}:64'b0;
      PRODUCT_27<=B[27]?{ 4'b0,A[31:0],28'b0}:64'b0;
      PRODUCT_28<=B[28]?{ 3'b0,A[31:0],29'b0}:64'b0;
      PRODUCT_29<=B[29]?{ 2'b0,A[31:0],30'b0}:64'b0;
      PRODUCT_30<=B[30]?{ 1'b0,A[31:0],31'b0}:64'b0;
      PRODUCT_31<=B[31]?{A[31:0],32'b0}:64'b0;
      end
  end

  assign SUM0_0   = PRODUCT_0   + PRODUCT_1 ;
  assign SUM0_1   = PRODUCT_2   + PRODUCT_3 ;
  assign SUM0_2   = PRODUCT_4   + PRODUCT_5 ;
  assign SUM0_3   = PRODUCT_6   + PRODUCT_7 ;
  assign SUM0_4   = PRODUCT_8   + PRODUCT_9 ;
  assign SUM0_5   = PRODUCT_10  + PRODUCT_11;
  assign SUM0_6   = PRODUCT_12  + PRODUCT_13;
  assign SUM0_7   = PRODUCT_14  + PRODUCT_15;
  assign SUM0_8   = PRODUCT_16  + PRODUCT_17;
  assign SUM0_9   = PRODUCT_18  + PRODUCT_19;
  assign SUM0_10  = PRODUCT_20  + PRODUCT_21;
  assign SUM0_11  = PRODUCT_22  + PRODUCT_23;
  assign SUM0_12  = PRODUCT_24  + PRODUCT_25;
  assign SUM0_13  = PRODUCT_26  + PRODUCT_27;
  assign SUM0_14  = PRODUCT_28  + PRODUCT_29;
  assign SUM0_15  = PRODUCT_30  + PRODUCT_31;
  assign SUM1_0   = SUM0_0   +   SUM0_1   ;
  assign SUM1_1   = SUM0_2   +   SUM0_3   ;
  assign SUM1_2   = SUM0_4   +   SUM0_5   ;
  assign SUM1_3   = SUM0_6   +   SUM0_7   ;
  assign SUM1_4   = SUM0_8   +   SUM0_9   ;
  assign SUM1_5   = SUM0_10  +   SUM0_11  ;
  assign SUM1_6   = SUM0_12  +   SUM0_13  ;
  assign SUM1_7   = SUM0_14  +   SUM0_15  ;
  assign SUM2_0   = SUM1_0   +   SUM1_1   ;
  assign SUM2_1   = SUM1_2   +   SUM1_3   ;
  assign SUM2_2   = SUM1_4   +   SUM1_5   ;
  assign SUM2_3   = SUM1_6   +   SUM1_7   ;
  assign SUM3_0   = SUM2_0   +   SUM2_1   ;
  assign SUM3_1   = SUM2_2   +   SUM2_3   ;

always @(posedge clk) begin
  if (reset) begin
    SUM4_0   <=64'b0;
    PRODUCT  <=32'b0;
  end else begin
    SUM4_0   <= SUM3_0   +   SUM3_1   ;
    PRODUCT  <= SUM4_0[47:16]   ;
  end
end
endmodule
