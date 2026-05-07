`include "baud_gen_tx.v" 
`include "baud_gen_rx.v" 
`include "UART_tx.v" 
`include "UART_rx.v" 
module UART_top_module #(parameter N =8)(input clk,reset,
                                         input w_en,
                                         input [N-1:0]din,
                                         output reg [N-1:0]dout,
                                         output reg ready,busy,parity_err,frame_err
                                        );
  wire tx;
  wire tx_en,rx_en;
  
  baud_gen_tx b1(.clk(clk),.reset(reset),.tx_en(tx_en));
  baud_gen_rx b2(.clk(clk),.reset(reset),.rx_en(rx_en));
  
  UART_tx #(.N(N)) b3(.clk(clk),.reset(reset),.w_en(w_en),.tx_en(tx_en),.din(din),.busy(busy),.tx(tx));
  UART_rx #(.N(N)) b4(.clk(clk),.reset(reset),.rx(tx),.rx_en(rx_en),.dout(dout),.ready(ready),.parity_err(parity_err),.frame_err(frame_err));
endmodule
           
