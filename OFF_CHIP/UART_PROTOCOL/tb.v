module tb #(parameter N=8);
  reg clk ,reset;
  reg w_en;
  reg [N-1:0]din;
  wire [N-1:0]dout;
  wire ready,busy,parity_err,frame_err;
  
  UART_top_module #(N) dut(.*);
  
  always #5 clk = ~clk;
  initial begin
    $dumpfile("UART_top_module.vcd");
    $dumpvars(0,tb);
    $monitor("TIME = %0t | busy = %b | ready=%b | datain = %b | dataout = %b | parity error = %b frame error = %b",$time,busy,ready,din,dout,parity_err,frame_err);
    reset = 0;
    clk = 0;
    w_en = 0;
    din = 8'd0;
    
    #100 reset = 1;
    #500;
    @(posedge clk);
    wait (busy == 0);
    w_en =1;
    din= 8'b10001110;
    @(posedge clk);
    w_en =0;
    wait (busy == 1);
    wait (busy == 0);
    @(posedge ready);
    #200000;
    
    @(posedge clk);
    wait (busy == 0);
    w_en =1;
    din= 8'b11001101;
    @(posedge clk);
    w_en =0;
    wait (busy == 1);
    wait (busy == 0);
    @(posedge ready);
    #200000;
    $finish;
    
  end
endmodule
    
    
  
