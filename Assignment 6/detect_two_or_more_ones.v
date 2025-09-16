`timescale 1ns / 1ps

module detect_two_or_more_1s(
    input clk,
    input reset,
    input din,
    output reg dout
    );
    
parameter s00 = 2'b00,
          s01 = 2'b01,
          s10 = 2'b10,
          s11 = 2'b11;
          
    reg [1:0] state, next_state;
  always @(posedge clk or posedge reset) begin
    if (reset)
        state <= s00;
     else
        state <= next_state;
  end
  
  always @(*) begin
     case(state)
      s00: begin
          next_state = {state[0], din}; 
          dout = (din==1) ? 0 : 0;  
      end
      
      s01: begin
            next_state = {state[0], din};
            dout = {din==1} ? 1 : 0;
        end
       
      s10: begin
            next_state = {state[0], din};
            dout = {din==1} ? 1  : 0;
          end
          
      s11 : begin
            next_state = {state[0], din};
            dout =  1;
         end
         
       default : begin;
        next_state = s00;
         dout = 0;
       end
     endcase
   end 
endmodule

