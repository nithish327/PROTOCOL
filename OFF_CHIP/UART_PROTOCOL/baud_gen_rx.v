module baud_gen_rx #(parameter frequency = 100000000, baud_rate = 9600)(input clk,
                                                                       input reset,
                                                                       output reg rx_en
                                                                       );
  localparam integer clock_cycle = frequency/(baud_rate*16);
  reg[$clog2(clock_cycle)-1:0]rx_count;
  
  always@(posedge clk or negedge reset)begin
    if(!reset)begin
      rx_count <=0;
      rx_en <= 0;
    end
    else begin
      if(rx_count == clock_cycle-1)begin
        rx_count <=0;
        rx_en<=1;
      end
      else begin
        rx_count <= rx_count + 1;
        rx_en <= 0;
      end
    end
  end
endmodule
