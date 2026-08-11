module tb;

  parameter d_w = 8;

  reg [d_w-1:0] S_ADDR;
  reg [d_w-1:0] M_DATA, S_DATA;
  reg clk = 0;
  reg reset, en;

  wire [d_w-1:0] S_D_OUT;
  wire [d_w-1:0] D_OUT;

  top_level #(d_w) dut (
    .clk (clk),
    .reset   (reset),
    .en      (en),
    .S_ADDR  (S_ADDR),
    .M_DATA  (M_DATA),
    .S_DATA  (S_DATA),
    .S_D_OUT (S_D_OUT),
    .D_OUT   (D_OUT)
  );


  always #5 clk = ~clk;

  task start_transaction;
  begin
    @(posedge clk);
    en = 1;

    @(posedge clk);
    en = 0;
  end
  endtask

  // Wait for transaction to complete
  task wait_transaction_done;
  begin
    wait(dut.ins1.state != 0);   // Master leaves IDLE
    wait(dut.ins1.state == 0);   // Master returns to IDLE

    @(posedge clk);
    @(posedge clk);
  end
  endtask

  // WRITE Task
  task write_test(
      input [7:0] addr,
      input [7:0] wr_data
  );
  begin

    $display("\n======================================");
    $display("          WRITE TEST");
    $display("======================================");

    S_ADDR = addr;
    M_DATA = wr_data;

    start_transaction();
    wait_transaction_done();

    if (S_D_OUT == wr_data)
      $display("WRITE PASSED : Expected=%h  Received=%h",
                wr_data, S_D_OUT);
    else begin
      $display("WRITE FAILED");
      $display("Expected = %h", wr_data);
      $display("Received = %h", S_D_OUT);
    end

    repeat(20) @(posedge clk);

  end
  endtask

  // READ Task
  task read_test(
      input [7:0] addr,
      input [7:0] expected_data
  );
  begin

    $display("\n======================================");
    $display("          READ TEST");
    $display("======================================");

    S_ADDR = addr;
    S_DATA = expected_data;

    start_transaction();
    wait_transaction_done();

    if (D_OUT == expected_data)
      $display("READ PASSED : Expected=%h  Received=%h",
                expected_data, D_OUT);
    else begin
      $display("READ FAILED");
      $display("Expected = %h", expected_data);
      $display("Received = %h", D_OUT);
    end

    repeat(20) @(posedge clk);

  end
  endtask

  // Test Sequence
  initial begin

    $dumpfile("tb.vcd");
    $dumpvars(0, tb);

    reset  = 1;
    en     = 0;
    S_ADDR = 0;
    M_DATA = 0;
    S_DATA = 0;

    #501;
    reset = 0;

    // WRITE Transaction
    write_test(8'b0000_0010, 8'hBB);

    // READ Transaction
    read_test(8'b0000_0011, 8'hAB);

    $display("\n======================================");
    $display("     ALL TESTS COMPLETED");
    $display("======================================");

    $finish;

  end

  // Monitor
  initial begin
    $monitor("t=%0t | M.state=%0d SDA_r=%0b SCL_r=%0b count=%0d | S.state=%0d S.SDA_r=%0b | SDA=%0b SCL=%0b",
              $time,
              dut.ins1.state,
              dut.ins1.SDA_r,
              dut.ins1.SCL_r,
              dut.ins1.count,
              dut.ins2.state,
              dut.ins2.SDA_r,
              dut.SDA,
              dut.SCL);
  end

endmodule
