`include "i2c_master.sv"
`include "i2c_slave.sv"
module top_level #(parameter d_w =8)
  (input clk,
   input reset, 
   input en,
   input [d_w-1:0] S_ADDR,
   input [d_w-1:0] M_DATA,
   //inout SDA,
   
   
   //input [d_w-1:0] S_ADDR,
   input [d_w-1:0] S_DATA,  
   //inout SDA,
   //input SCL,
   output reg [d_w-1:0] S_D_OUT,
   output reg [d_w-1:0] D_OUT
  
  );
  
  wire SCL;
  pullup P_SDA (SDA);
  pullup PU_SCL (SCL);
  
   i2c_master ins1(
     .clk(clk),
     .reset(reset), 
     .en(en),
     .S_ADDR(S_ADDR),
     .M_DATA(M_DATA),
     .SCL(SCL),
     .SDA(SDA),
     .D_OUT(D_OUT)
     
   );
    
   i2c_slave ins2(
     .clk(clk), 
     .reset(reset),
     .S_DATA(S_DATA),
     .SDA(SDA),
     .SCL(SCL),
     .S_D_OUT(S_D_OUT)
   
  );
  
endmodule
