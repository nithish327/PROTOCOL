module i2c_master #(parameter d_w = 8)
  (input clk,
   input reset,
   input en,
   input [d_w-1:0] S_ADDR,
   input [d_w-1:0] M_DATA,
   output logic SCL,
   inout  logic SDA,
   output reg [d_w-1:0] D_OUT);

  localparam [2:0] IDLE  = 0,
                   START = 1,
                   ADDR  = 2,
                   R_W   = 3,
                   ACK_A = 4,
                   DATA  = 5,
                   ACK_D = 6,
                   STOP  = 7;

  reg [2:0]  state;
  reg [3:0]  count;
  reg [9:0]  clk_div;
  reg SCL_r, SDA_r;
  reg [d_w-1:0] S_ADDR_reg, M_data_reg;

  // Clock divider
  always @(posedge clk) begin
    if (reset) begin
      SCL_r   <= 1;
      clk_div <= 0;
    end
    else begin
      if (clk_div == 499) begin
        SCL_r   <= ~SCL_r;
        clk_div <= 0;
      end
      else
        clk_div <= clk_div + 1;
    end
  end

  assign SCL = SCL_r;
  assign SDA = SDA_r ? 1'bz : 1'b0;   // SDA_r=1 -> hi-z, SDA_r=0 -> drive low

  //  Edge detection on SCL_r 
  reg SCL_r_prev;
  always @(posedge clk) SCL_r_prev <= SCL_r;

  wire SCL_posedge = ( SCL_r && !SCL_r_prev);
  wire SCL_negedge = (!SCL_r &&  SCL_r_prev);

  
  always @(posedge clk) begin
    if (reset) begin
      state      <= IDLE;
      SDA_r      <= 1;
      count      <= 0;
      D_OUT      <= 0;
      S_ADDR_reg <= 0;
      M_data_reg <= 0;
    end
    else begin
      case (state)

        IDLE: begin
          SDA_r <= 1;
          count <= 0;
          if (en)
            state <= START;
        end

        // Pull SDA low while SCL high = START condition.
        // Wait for SCL_negedge before moving to ADDR so slave
        // can detect START and enter ADDR_CHECK with SCL=0.
        START: begin
          if (SCL_posedge) begin
            SDA_r      <= 0;
            S_ADDR_reg <= S_ADDR;
            M_data_reg <= M_DATA;
          end
          if (SCL_negedge && SDA_r == 0)
            state <= ADDR;
        end

        // Drive each address bit on SCL_negedge.
        ADDR: begin
          if (SCL_negedge) begin
            SDA_r      <= S_ADDR_reg[7];
            S_ADDR_reg <= {S_ADDR_reg[6:0], 1'b0};
            if (count == 6) begin
              state <= R_W;
              count <= 0;
            end
            else
              count <= count + 1;
          end
        end

        R_W: begin
          if (SCL_negedge) begin
            SDA_r <= S_ADDR[0];
            state <= ACK_A;
          end
        end

        ACK_A: begin
          if (SCL_negedge)
            SDA_r <= 1;
          if (SCL_posedge) begin
            if (!SDA)
              state <= DATA;
          end
        end

        DATA: begin
          if (SCL_negedge) begin
            if (!S_ADDR[0])
              SDA_r <= M_data_reg[7];
            else
              SDA_r <= 1;
          end
          if (SCL_posedge) begin
            if (S_ADDR[0])
              D_OUT <= {D_OUT[6:0], SDA};
            if (S_ADDR[0] == 0)
              M_data_reg <= {M_data_reg[6:0], 1'b0};
            if (count == 7) begin
              count <= 0;
              state <= ACK_D;
            end
            else
              count <= count + 1;
          end
        end

        ACK_D: begin
          if (SCL_negedge) begin
            if (S_ADDR[0])
              SDA_r <= 1;   // READ: NACK
            else
              SDA_r <= 1;   // WRITE: release for slave ACK
          end
          if (SCL_posedge)
            state <= STOP;
        end

        STOP: begin
          if (SCL_negedge)
            SDA_r <= 0;
          if (SCL_posedge) begin
            SDA_r <= 1;
            state <= IDLE;
          end
        end

      endcase
    end
  end

endmodule
