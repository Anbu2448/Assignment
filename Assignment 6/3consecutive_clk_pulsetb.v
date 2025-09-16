`timescale 1ns / 1ps

`timescale 1ns / 1ps

module tb_sequence_detector_v4;

  // Inputs
  reg clk;
  reg rst;
  reg x;

  // Outputs
  wire y;

  // Instantiate the Unit Under Test (UUT)
  sequence_detector_v4 uut (
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 100 MHz clock (10 ns period)
  end

  // Test sequence
  initial begin
    $dumpfile("sequence_detector_v4.vcd");
    $dumpvars(0, tb_sequence_detector_v4);

    // 1. Reset the FSM
    rst = 1;
    x = 0;
    #10;
    rst = 0;
    #10;
    
    // 2. Test for sequence 111 (overlapping)
    $display("Testing for 111 sequence...");
    x = 1; #10; // Input: 1. history: 0, counter: 1
    x = 1; #10; // Input: 1. history: 1, counter: 2
    x = 1; #10; // Input: 1. history: 1, counter: 3 -> Output y should be 1
    
    x = 1; #10; // Input: 1. history: 1, counter: 4 -> Output y should be 1
    x = 1; #10; // Input: 1. history: 1, counter: 4 -> Output y should be 1
    
    // 3. Test for sequence 000 (non-overlapping and then overlapping)
    $display("Testing for 000 sequence...");
    x = 0; #10; // Input: 0. history: 1, counter: 1
    x = 0; #10; // Input: 0. history: 0, counter: 2
    x = 0; #10; // Input: 0. history: 0, counter: 3 -> Output y should be 1
    
    x = 0; #10; // Input: 0. history: 0, counter: 4 -> Output y should be 1
    x = 1; #10; // Input: 1. history: 0, counter: 1
    
    // 4. Test mixed sequence
    $display("Testing a mixed sequence...");
    x = 0; #10; // Input: 0. history: 1, counter: 1
    x = 1; #10; // Input: 1. history: 0, counter: 1
    x = 0; #10; // Input: 0. history: 1, counter: 1
    x = 1; #10; // Input: 1. history: 0, counter: 1
    
    x = 1; #10; // Input: 1. history: 1, counter: 2
    x = 0; #10; // Input: 0. history: 1, counter: 1
    x = 0; #10; // Input: 0. history: 0, counter: 2
    x = 0; #10; // Input: 0. history: 0, counter: 3 -> Output y should be 1
    
    $display("Test complete.");
    $finish;
  end

  // Display and monitor signals for debugging
  initial begin
    $monitor("Time=%0t, rst=%b, x=%b, last_input=%b, counter=%d, y=%b",
             $time, rst, x, uut.last_input, uut.counter, y);
  end

endmodule
