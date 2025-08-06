`timescale 1ns / 1ps

module dlatch_usingmux2to1tb;
reg d;
reg en;
wire q;
dlatch_usingmux2to1 uut (.d(d),.en(en),.q(q));
  initial begin
    $display("Time\t en\t d\t q");
    $monitor("%0t\t %b\t %b\t %b", $time, en, d, q);
    en=0;d=0;#10;
    en=1;d=1;#10;
    en=0;d=0;#10;
    en=1;d=0;#10;
    en=1;d=0;#10;
    en=1;d=1;#10;
    $finish;
  end
endmodule

