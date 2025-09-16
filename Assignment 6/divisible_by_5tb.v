`timescale 1ns/1ps

module divisible_by_5tb;
    reg clk, reset, din;
    wire dout;

    divisible_by_5 uut (.clk(clk), .reset(reset), .din(din), .dout(dout));
    initial clk = 0;
    always #5 clk = ~clk;
     initial begin
      $monitor ("time=%0t | din=%d | dout=%d", $time, din, dout);
      reset = 1; din = 0;
      #10;
      reset = 0;
      
      din = 0; #10;
      din = 1; #10;
      din = 2; #10;
      din = 3; #10;
      din = 4; #10;
      #20;
      $finish;
     end
   endmodule 
      
      
    
