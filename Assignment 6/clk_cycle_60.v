`timescale 1ns / 1ps

module clk_cycle_60(
    input clk,
    input reset,
    output reg clk_out
    );
    parameter max_cycle = 6;
    parameter min_cycle = 4;
    
  reg [$clog2(max_cycle + min_cycle)-1:0] count;
  reg phase; 
  
  always @(posedge clk) begin
   if(reset) begin
    clk_out <= 0;
    count <= 0;
    phase <= 0;
   end else begin
   count <= count+1;
   
   if(phase==0) begin
    clk_out <=1;
    if(count == max_cycle - 1) begin
      count <= 0;
      count <= 1;
    end
   end else begin
     clk_out <= 0;
    if(count == min_cycle - 1) begin
      count <= 0;
      count <= 0;
    end
   end
  end
 end   
endmodule
