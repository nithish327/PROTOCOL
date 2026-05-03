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
    
    //Consecutive Write operation
    @(posedge PCLK);
    TRANSFER =1;
    READ_WRITE = 1;
    apb_write_paddr =8'hff;
    apb_write_data =8'hbc;
    wait(PREADY);
    @(posedge PCLK);
    TRANSFER =0;
    
    @(posedge PCLK);
    TRANSFER =1;
    READ_WRITE = 1;
    apb_write_paddr =8'h1a;
    apb_write_data =8'h2e;
    wait(PREADY);
    @(posedge PCLK);
    TRANSFER =0;
    
    @(posedge PCLK);
    TRANSFER =1;
    READ_WRITE = 1;
    apb_write_paddr =8'h11;
    apb_write_data =8'hfe;
    wait(PREADY);
    @(posedge PCLK);
    TRANSFER =0;
    
    //Consecutive Read operation

    @(posedge PCLK);
    TRANSFER =1;
    READ_WRITE = 0;
    apb_read_paddr=8'hff;
    
    wait(PREADY);
    @(posedge PCLK);

    TRANSFER =0;
    
     @(posedge PCLK);
    TRANSFER =1;
    READ_WRITE = 0;
    apb_read_paddr=8'h1a;
    
    wait(PREADY);
    @(posedge PCLK);

    TRANSFER =0;
    
     @(posedge PCLK);
    TRANSFER =1;
    READ_WRITE = 0;
    apb_read_paddr=8'h11;
    
    wait(PREADY);
    @(posedge PCLK);

    TRANSFER =0;
    
    #30$finish;
    
  end
  initial begin
    
    $monitor("T=%0t PSEL=%b PENABLE=%b PWRITE=%b PADDR=%h PWDATA=%h PREADY=%b PRDATA=%h READ_OUT=%h",
              $time, PSELx, PENABLE, PWRITE, PADDR, PWDATA, PREADY, PRDATA, apb_read_data_out);
    
  end
   
endmodule
  
    
