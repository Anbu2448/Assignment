`timescale 1ns / 1ps

module Moore_state(
    input clk,
    input reset,
    input j,
    input k,
    output reg out
    );
    
    reg [1:0] state, next_state;
    
    parameter off = 2'b00;
    parameter on = 2'b10 ;
    
always @(posedge clk or posedge reset) begin
    if (reset)
      state <= off;
    else
      state <= next_state;
   end
   
 always @(*) begin
   case (state)
    off: begin;
      if (j)
       next_state = on;
      else
       next_state = off;
   end
   
   on:begin;
     if (k)
      next_state = off;
     else
      next_state = on;
    end
    default: next_state = off;
    endcase 
    end
    
    always @(*) begin
    case (state)
       off: out = 0;
       on: out = 1;
      default: out = 0;
      endcase
     end
endmodule
