module  APB_slave  #(parameter ADDR_WIDTH =8,DATA_WIDTH=8)(
  input PCLK,
  input PRESETn,
  input  PWRITE,PSELx,PENABLE,
  input [ADDR_WIDTH -1:0]PADDR,
  input [DATA_WIDTH -1:0]PWDATA,
  output reg PREADY,
  output reg[DATA_WIDTH -1:0]PRDATA
);
  reg [7:0]mem[255:0];
  
  always@(posedge PCLK or negedge PRESETn)begin
    if (!PRESETn)begin
      PREADY <= 0;
      PRDATA <= 0;
    end
    else begin
      PREADY <=0;
      if(PENABLE && PSELx)begin
        PREADY <=1;
        if(PWRITE)
          mem[PADDR] <= PWDATA;
        else
          PRDATA <= mem[PADDR];
      end
      else
        PREADY <= 0;
    end
  end
endmodule
