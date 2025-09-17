`timescale 1ns / 1ps


module moore_statetb();
    reg clk;
    reg reset; 
    reg j;
    reg k;
    wire out;
    
 Moore_state utt (.clk(clk), .reset(reset), .j(j), .k(k), .out(out));
 initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor ("time=%0t | j=%b | k=%b | out=%b", $time, j, k, out);
    reset = 1; j = 0; k = 0;
    #10;

    reset = 0;
    #10;
    j=0; k=1;
    #10;
    j=0; k=0;
    #10;
    j=1; k=0;
    #10;
    j=0; k=0;
    #10;
    j=1; k=0;
    #10;
    j=0; k=1;
    
    #20;
    $finish;
  end
endmodule
    
    
