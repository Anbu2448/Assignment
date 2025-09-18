`timescale 1ns / 1ps

module digital_stopwatch(
       input clk,
       input reset,
       output reg tick_1ms
    );
   parameter div_count = 100_000;
    reg[16:0] count;
    always @(posedge clk) begin
    if (reset) begin
      count <= 0;
      tick_1ms <= 0;
    end else begin
      if (count==div_count-1) begin
       count <= 0;
       tick_1ms <= 1;
      end else begin
         count <= count+1;
         tick_1ms <= 0;
        end
       end
      end
endmodule
