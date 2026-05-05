module tb;
  parameter ADDR_WIDTH =8;
  parameter DATA_WIDTH=8;
  reg PCLK;
  reg PRESETn;
  reg TRANSFER;
  reg READ_WRITE;
  reg [ADDR_WIDTH -1:0]apb_write_paddr,apb_read_paddr;
  reg [DATA_WIDTH -1:0]apb_write_data;
  wire PREADY;
  wire [DATA_WIDTH -1:0]PRDATA;
  wire [ADDR_WIDTH -1:0]PADDR;
  wire [DATA_WIDTH -1:0]PWDATA;
  wire [DATA_WIDTH -1:0]apb_read_data_out;
  wire PWRITE,PSELx,PENABLE;
  
  APB_top_module  #(ADDR_WIDTH, DATA_WIDTH) dut (.PCLK(PCLK),
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
  always #5 PCLK = ~PCLK;
  task apb_write;
    input [ADDR_WIDTH-1:0]addr;
    input [DATA_WIDTH-1:0]data;
    begin
      @(posedge PCLK);
      READ_WRITE =1;
      TRANSFER =1;
      apb_write_paddr = addr;
      apb_write_data = data;
      @(posedge PCLK);
      $display("Time = %0t Write_address = %h Write_data = %h",$time,addr,data);
      @(posedge PCLK);
      TRANSFER=0;
    end
  endtask
  task apb_read;
    input [ADDR_WIDTH-1:0]addr;
    begin
      @(posedge PCLK);
      READ_WRITE =0;
      TRANSFER =1;
      apb_read_paddr = addr;
      @(posedge PCLK);
      $display("Time = %0t Read_address = %h  Data_out = %h",$time,addr,apb_read_data_out);
      @(posedge PCLK);
      TRANSFER=0;
    end
  endtask
  initial begin
    
    $dumpfile("APB_topmodule.vcd");
    $dumpvars(0,tb);
    
    PCLK = 1;
    PRESETn = 0;
    TRANSFER =0;
    READ_WRITE = 0;

    apb_write_paddr=0;
    apb_read_paddr=0;
    apb_write_data =0;
    
    #15 PRESETn = 1;
    
    apb_write(8'hff,8'h11);
    apb_write($random,8'ha1);
    apb_write(8'hbc,8'h1d);
    apb_read(8'hce);
    #50 $finish;
  end
   
endmodule
  
    
