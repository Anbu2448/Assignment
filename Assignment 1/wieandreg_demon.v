`timescale 1ns / 1ps

module wieandreg_demon;
  wire net1,net2;
  assign net1=1'b1;
  assign net2=net1;
  initial begin
    $display ("net1=%d,net2=%b",net1,net2);
  end
endmodule

module demon;
  reg net1,net2;
  assign2 net1=1'b1;
  assign2 net2=net1;
  initial begin
    $display ("net1=%d,net2=%b",net1,net2);
  end
endmodule
   

