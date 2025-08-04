`timescale 1ns / 1ps


module time_simvariable;
  time t;
  initial begin
    t=$time;
    $display("time = %0t",t);
    #10
    t=$time;
    $display("time = %0t",t);
  end
endmodule

