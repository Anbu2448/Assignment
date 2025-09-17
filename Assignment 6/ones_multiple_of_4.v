`timescale 1ns / 1ps

module ones_multiple_of_4(
    input clk,
    input reset,
    input din, 
    output reg detected
    );
    
 reg [1:0] state, next_state;
     
   parameter s0 = 2'd0;  
   parameter s1 = 2'd1;  
   parameter s2 = 2'd2;  
   parameter s3 = 2'd3;  

always @(posedge clk or posedge reset) begin
    if (reset) 
      state <= s0;
    else
      state <= next_state;
     end
     
 always @(*) begin
   case (state)
    s0 : next_state = (din) ? s1 : s0;
    s1 : next_state = (din) ? s2 : s1;
    s2 : next_state = (din) ? s3 : s2;
    s3 : next_state = (din) ? s0 : s3;
    default : next_state = s0;
   endcase
 end
 
  always @(*) begin
   case (state)
   s0 : detected = 1;
   default:detected = 0;
     endcase
   end
 endmodule
   
    
    
    