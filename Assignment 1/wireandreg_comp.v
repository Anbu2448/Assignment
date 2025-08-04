`timescale 1ns / 1ps

module comparision1;
   wire net1;
   assign net1=1'b1;
   initial begin
   $display("%b",net1);
   end
endmodule

module comparision2;
   reg net1;
   initial begin
     assign net1=1'b1;
   $display("%b",net1);
   end
endmodule

