module UART_rx #(parameter N = 8)(input clk,reset,
                                  input rx,        
                                  input rx_en,       
                                  output reg [N-1:0] dout,
                                  output reg ready,
                                  output reg parity_err,frame_err
                                 );
   localparam integer a=$clog2(N);
   reg [a-1:0] count={a{1'b0}};
   reg [2:0] state,next_state;
   reg parity_bit;
   reg[3:0]sample;
   reg rx_sync, rx_prev;
   
   parameter [2:0]IDLE = 0,START = 1,DATA = 2,PARITY = 3,STOP = 4;
   
   always@(posedge clk or negedge reset)begin
     if(!reset)
       state <= IDLE;
     else state<= next_state;
   end
   always @(posedge clk or negedge reset)begin
     if(!reset)
       count <= 0;
     else if(state == DATA && sample == 15)
       count <= count +1;
     else if (state!= DATA)
       count <= 0;
   end
   
     
   
   always@(*)begin
     case(state)
       IDLE: begin
         if(rx==0)
           next_state <= START;
         else
           next_state <= IDLE;
       end
       START: begin
         if(rx==1 && sample == 4'd7)
           next_state <= IDLE;
         else begin
           if(rx_en && sample  == 4'd15)begin
             next_state <= DATA;
           end
           else
             next_state <= START;
         end
       end
       DATA: begin
         if(rx_en && count== N-1 && sample  == 4'd15)
           next_state <= PARITY;
         else
           next_state <= DATA;
       end
       PARITY: begin
         if(rx_en && sample==4'd15)
           next_state <= STOP;
         else
           next_state <= PARITY;
       end
       STOP: begin
         if(rx_en && sample ==4'd15 && rx)
           next_state <= IDLE;
         else
           next_state <= STOP;
       end
       default : next_state <= IDLE;
       endcase
   end
   always@(posedge clk or negedge reset)begin
     if(!reset)begin
       dout <= 0;
       frame_err <= 0;
       parity_err  <=0;
     end
     else begin
       case(state)
         IDLE : begin
           if(!rx && rx_en)
              ready<=0;
            else
              ready<=1;
          end
          START:begin
            ready<=0;
           end
          DATA: begin
              ready<=0;
            if(rx_en && sample==4'd8) 
              dout<={rx,dout[N-1:1]};
            end
               
          PARITY:begin
            ready<=0;
            if(rx_en && sample==4'd8) begin
              parity_err<=(^dout!=rx);
            end
          end
          STOP:begin
            ready<=0;
            if(rx_en && sample==4'd8)begin
              frame_err<=~rx;
              ready <= rx;
            end
           end
          default:begin
            ready<=0;
            dout<={N{1'b0}};
            frame_err<=0;
            parity_err<=0;
          end
        endcase
      end
   end
   
   always@(posedge clk or negedge reset)begin
     if(!reset)
       sample <=0;
     else if(rx_en) begin
       if(sample==15)
         sample<=0;
       else
         sample<=sample+1;
     end
  end
 endmodule
