module  APB_Master  #(parameter ADDR_WIDTH =8,DATA_WIDTH=8)(
  input PCLK,
  input PRESETn,
  input TRANSFER,
  input READ_WRITE,
  input PREADY,
  input [ADDR_WIDTH -1:0]apb_write_paddr,apb_read_paddr,
  input [DATA_WIDTH -1:0]apb_write_data,
  input [DATA_WIDTH -1:0]PRDATA,
  output reg [ADDR_WIDTH -1:0]PADDR,
  output reg [DATA_WIDTH -1:0]PWDATA,
  output reg [DATA_WIDTH -1:0]apb_read_data_out,
  output reg PWRITE,PSELx,PENABLE
);
  reg [1:0]state,next_state;
  parameter [1:0] IDLE = 0,
  SETUP = 1,
  ACCESS = 2;
  
  always@(posedge PCLK or negedge PRESETn)begin
    if(!PRESETn)begin
      state <= IDLE;
    end
    else
      state <=next_state;
  end
  
  always@(*)begin
    case(state)
      IDLE:begin
        if(TRANSFER)
          next_state = SETUP;
        else
          next_state = IDLE;
      end
      
      SETUP:begin
          next_state = ACCESS;
       
      end
      ACCESS:begin
        if(PREADY)begin
          if(TRANSFER)
            next_state = SETUP;
          else
            next_state = IDLE;
        end
        else
          next_state = ACCESS;
      end
      default : next_state = IDLE;
    endcase
  end
  
  always@(posedge PCLK or negedge PRESETn)begin
    if(!PRESETn)begin
      PWRITE <= 0;
      PSELx <= 0;
      PENABLE <= 0;
      PADDR <=0;
      PWDATA <= 0;
    end
    else begin
      case(state)
        IDLE: begin
          PSELx <= 0;
          PENABLE <= 0;
        end
        
        SETUP:begin
          PSELx <= 1;
          PENABLE <= 0;
          PWRITE <= READ_WRITE;
          
          if(READ_WRITE)begin
            PWDATA <= apb_write_data;
            PADDR <= apb_write_paddr;
          end
          else 
            PADDR <= apb_read_paddr;
          
          
        end
        
        ACCESS:begin
          PSELx <= 1;
          PENABLE <= 1;
          
          if(PREADY && !READ_WRITE)
            apb_read_data_out <= PRDATA; 
        end
      endcase
    end
  end
endmodule
