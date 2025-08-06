`timescale 1ns / 1ps

module Gen_DC_fvrlooptb;
 wire clk;
Gen_DC_fvrloop uut(.clk(clk));
initial begin
    $monitor("%0t\t%b", $time, clk);
  end
  initial begin
    #10;
    $finish;
  end
endmodule
