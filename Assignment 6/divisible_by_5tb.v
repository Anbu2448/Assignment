`timescale 1ns / 1ps

module divisible_by_5tb();
    reg clk;
    reg reset;
    reg din;
    wire divisible;
    
divisible_by_5 uut (.clk(clk), .reset(reset), .din(din), .divisible(divisible));
 initial clk = 0;
 always #5 clk = ~clk;
 
 initial begin
    $display ("time din divisible comment");
    $monitor ("time=%0t din=%d divisible=%d", $time, din, divisible);
    reset=1; din=0;
    #12;
    reset=0;

        din = 1; #10;  
        din = 0; #10;   
        din = 1; #10;  
        din = 1; #10;
        din = 1; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 0; #10;
        din = 0; #10;

        #20;
        $finish;
    end
endmodule
