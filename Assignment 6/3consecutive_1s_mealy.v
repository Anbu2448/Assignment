`timescale 1ns / 1ps



module threeconsecutive_1s_mealy(
 input clk,
 input reset,
 input din,
 output reg detected
 );
 reg [1:0] state,next_state;
 
 parameter a = 2'd0;
 parameter b = 2'd1;
 parameter c = 2'd2;
 
 always @(posedge clk or posedge reset) begin
 if (reset)
  state <= a;
 else 
   state <= next_state;
   end 
   
   always @(*) begin
   next_state = state;
   detected = 1'b0;
   
   case (state)
     a:begin
     if(din)
       next_state = b;
     else
       next_state = a;
    end
    
    b:begin
    if(din)
      next_state = c;
    else
      next_state = a;
    end
    
    c:begin
    if(din) begin
      next_state = c;
      detected = 1'b1;
    end else 
       next_state = a;
     end 
     
     default: next_state = a;
     endcase
   end        
endmodule
