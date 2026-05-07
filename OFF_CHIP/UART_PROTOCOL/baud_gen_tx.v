
module baud_gen_tx #(parameter frequency = 100000000, baud_rate = 9600)(input clk,
                                                                       input reset,
                                                                       output reg tx_en
                                                                       );
  localparam integer clock_cycle = frequency/(baud_rate);
  reg[$clog2(clock_cycle)-1:0]tx_count;
  
  always@(posedge clk or negedge reset)begin
    if(!reset)begin
      tx_count <=0;
      tx_en <= 0;
    end
    else begin
      if(tx_count == clock_cycle-1)begin
        tx_count <=0;
        tx_en<=1;
      end
      else begin
        tx_count <= tx_count + 1;
        tx_en <= 0;
      end
    end
  end
endmodule
