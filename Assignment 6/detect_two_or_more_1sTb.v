`timescale 1ns / 1ps

module detect_two_or_more_1sTb;
     reg clk;
     reg reset;
     reg din;
     wire dout;
     
 detect_two_or_more_1s uut(.clk(clk), .reset(reset), .din(din), .dout(dout));
 initial clk = 0;
 always #5 clk = ~clk;
   
   initial begin
  $monitor ("time=%0t | din=%b | dout=%b", $time, din, dout);
       reset = 1; din = 0;
       #10;
       reset = 0;
       
       din = 0; #10;
       din = 1; #10;
       din = 0; #10;
       din = 1; #10;
       din = 1; #10;
       din = 0; #10;
       #20;
       $finish;
     end
   endmodule
       
