`timescale 1ns / 1ps

module divisible_by_5(
    input clk,
    input reset ,
    input din,
    output reg dout
    );
    
parameter s0 = 3'd0,
          s1 = 3'd1,
          s2 = 3'd2,
          s3 = 3'd3,
          s4 = 3'd4;
    reg [2:0] state, next_state;
    
  always @(posedge clk or posedge reset) begin
  if (reset) 
   state <= 0;
  else 
   state <= next_state;
  end
  
  always @(*) begin
  case(state)
    s0: next_state = (din==0) ? s0 : s1;
    s1: next_state = (din==1) ? s2 : s3;
    s2: next_state = (din==2) ? s4 : s0;
    s3: next_state = (din==3) ? s1 : s2;
    s4: next_state = (din==4) ? s3 : s4;
    default : next_state = 0;
    endcase
   end
    
  always @(*) begin
    dout = (state==s0);
   end   
endmodule
