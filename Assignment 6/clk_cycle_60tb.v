`timescale 1ns / 1ps

module clk_cycle_60tb;
    reg clk;
    reg reset;
    wire clk_out;
    
  clk_cycle_60 uut (.clk(clk), .reset(reset), .clk_out(clk_out));
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
  $monitor ("time=%0t | reset=%b | clk_out=%b", $time, reset, clk_out);
  reset = 1;
  #10;
  reset = 0;
  #10;
  reset = 1;
   #10;
  reset = 0; 
  #10;
  
  $finish;
  end
 endmodule

