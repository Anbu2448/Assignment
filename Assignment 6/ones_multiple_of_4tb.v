`timescale 1ns / 1ps

module ones_multiple_of_4tb();
    reg clk;
    reg reset;
    reg din;
    wire detected;
    
 ones_multiple_of_4 utt (.clk(clk), .reset(reset), .din(din), .detected(detected));
 initial clk = 0;
 always #5 clk = ~clk;
 
 initial begin
    $monitor ("time=%0t | din=%b | detected=%b", $time, din, detected);
    reset = 1; din = 0;
    #12;
    reset = 0;
    
    #10 din = 1;
     #10 din = 0;
      #10 din = 0;
       #10 din = 1;
        #10 din = 0;
         #10 din = 1;
          #10 din = 1;
           #10 din = 0;
         #20;
        $finish;
      end           
endmodule
