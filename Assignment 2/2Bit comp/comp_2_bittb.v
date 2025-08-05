`timescale 1ns / 1ps

module comp_2_bittb;
reg a1,a0,b1,b0;
wire na1,na0,nb1,nb0,a_gt_b,a_eq_b,a_lt_b;

comp_2_bit uut(.a1(a1), .a0(a0), .b1(b1), .b0(b0),
              .na1(na1), .na0(na0), .nb1(nb1), .nb0(nb0),
              .a_gt_b(a_gt_b), .a_eq_b(a_eq_b), .a_lt_b(a_lt_b));
initial begin
      a1=0; a0=0; b1=0; b0=0; #10;
      a1=0; a0=0; b1=0; b0=1; #10;
      a1=0; a0=0; b1=1; b0=0; #10;
      a1=0; a0=0; b1=1; b0=1; #10;
      a1=0; a0=1; b1=0; b0=0; #10;
      a1=0; a0=1; b1=0; b0=1; #10;
      a1=0; a0=1; b1=1; b0=0; #10;
      a1=0; a0=1; b1=1; b0=1; #10;
      a1=1; a0=0; b1=0; b0=0; #10;
      a1=1; a0=0; b1=0; b0=1; #10;
      a1=1; a0=0; b1=1; b0=0; #10;
      a1=1; a0=0; b1=1; b0=1; #10;
      a1=1; a0=1; b1=0; b0=0; #10;
      a1=1; a0=1; b1=0; b0=1; #10;
      a1=1; a0=1; b1=1; b0=0; #10;
      a1=1; a0=1; b1=1; b0=1; #10;
      $finish;
      end
endmodule
      
