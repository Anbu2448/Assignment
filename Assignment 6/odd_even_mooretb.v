`timescale 1ns / 1ps

module odd_even_mooretb();
 reg clk;
 reg reset;
 reg din;
 wire detected;
 
 odd_even_moore uut( .clk(clk), .reset(reset), .din(din), .detected(detected));
 initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | din=%b | detected=%b", $time, din, detected);
        reset = 1; din = 0;
        #12; 
        reset = 0;

        din = 0; #10;   
        din = 1; #10;   
        din = 0; #10;   
        din = 1; #10; 
        din = 1; #10; 
        din = 0; #10;   
        din = 0; #10; 
        din = 1; #10;   

        #20;
        $finish;
    end

endmodule