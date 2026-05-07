module UART_tx #(parameter N = 8)(input clk,reset,
                                  input w_en,        //from tb
                                  input tx_en,       // from baud_rate_generator
                                  input [N-1:0] din,
                                  output reg busy,
                                  output reg tx
                                 );
  reg [N-1:0]shift_reg;
  reg [$clog2(N)-1:0]count;
  reg [2:0]state,next_state;
  parameter [2:0]IDLE =0,START = 1,DATA = 2,PARITY = 3,STOP = 4;
  
  always@(posedge clk or negedge reset)begin
    if(!reset)begin
      state <= IDLE;
    end
    else begin
      state <= next_state;
  end
  end
  always@(posedge clk or negedge reset)begin
      if(!reset)
        count<=0;
      else if(state == DATA && tx_en)
        count <= count+1;
      else if(state != DATA)
        count <= 0;
  end
  always@(*)begin
    case(state)
      IDLE: begin
        if(w_en)
          next_state = START;
        else
          next_state = IDLE;
      end
      START: begin
        if(tx_en)
          next_state = DATA;
        else
          next_state = START;
      end
      DATA: begin
        if(tx_en && count == N-1)
          next_state = PARITY;
        else
          next_state = DATA;
      end
      PARITY: begin
        if(tx_en)
          next_state = STOP;
        else
          next_state = PARITY;
      end
      STOP: begin
        if(tx_en )
          next_state = IDLE;
        else
          next_state = STOP;
      end
    endcase
  end
  
  always@(posedge clk or negedge reset)begin
    if(!reset)begin
      tx <= 0;
      busy <= 0;
      shift_reg <= {N{1'b0}};
    end
    else begin
      case(state)
        START : begin
          busy <= 1;
          if(tx_en)begin
            tx <= 0;
            shift_reg <= din;
          end 
        end
        DATA : begin
          if(tx_en)begin
            tx <= shift_reg[0];
            shift_reg <= {1'b0,shift_reg[N-1:1]};
          end 
        end
        PARITY : begin
          if(tx_en)begin
            tx <= ^din;
          end 
        end
         STOP : begin
          if(tx_en)begin
            tx <= 1;
            busy <= 0;
          end 
        end
        default: begin
          tx <= 1;
          busy <= 0;
        end
      endcase
    end
    end
endmodule
