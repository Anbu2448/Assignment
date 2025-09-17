`timescale 1ns / 1ps

module odd_even_moore(
    input clk,
    input reset,
    input din,
    output reg detected
);
   reg [1:0] state, next_state;
    
  parameter a = 2'b00;
  parameter b = 2'b01;
  parameter c = 2'b10;
  parameter d = 2'b11;

  always @(posedge clk or posedge reset) begin
  if (reset)
    state <= a;
  else 
    state <= next_state;
 end
    
  always @(*) begin
  case (state)
     a : next_state =(din) ? a : b;
     b : next_state =(din) ? b : c;
     c : next_state =(din) ? c : d;
     d : next_state =(din) ? d : a;
     default:next_state = a;
     endcase
  end
     
  always @(*) begin
    case (state)
    d:detected = 1;
    default: detected = 0;
       endcase
    end
endmodule
