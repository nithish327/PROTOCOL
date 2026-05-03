module APB_top_module #(parameter ADDR_WIDTH =8,DATA_WIDTH=8)(
  input PCLK,
  input PRESETn,
  input TRANSFER,
  input READ_WRITE,
  input [ADDR_WIDTH-1:0] apb_write_paddr,apb_read_paddr,
  input [DATA_WIDTH-1:0] apb_write_data,
  output PREADY,
  output [DATA_WIDTH-1:0] PRDATA,
  output [ADDR_WIDTH-1:0] PADDR,
  output [DATA_WIDTH-1:0] PWDATA,
  output [DATA_WIDTH-1:0] apb_read_data_out,
  output PWRITE,
  output PSELx,
  output PENABLE
);
  
  APB_Master apb1 (.PCLK(PCLK),
                   .PRESETn(PRESETn),
                   .TRANSFER(TRANSFER),
                   .READ_WRITE(READ_WRITE),
                   .PREADY(PREADY),
                   .apb_write_paddr(apb_write_paddr),
                   .apb_read_paddr(apb_read_paddr),
                   .apb_write_data(apb_write_data),
                   .PRDATA(PRDATA),
                   .PADDR(PADDR),
                   .PWDATA(PWDATA),
                   .apb_read_data_out(apb_read_data_out),
                   .PWRITE(PWRITE),.PSELx(PSELx),.PENABLE(PENABLE));
  
  APB_slave apb2 ( .PCLK(PCLK),
                   .PRESETn(PRESETn),
                   .PREADY(PREADY),
                   .PRDATA(PRDATA),
                   .PADDR(PADDR),
                   .PWDATA(PWDATA),
                   .PWRITE(PWRITE),.PSELx(PSELx),.PENABLE(PENABLE));
endmodule
