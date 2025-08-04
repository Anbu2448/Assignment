

module mux4to1;
  time t;
  initial begin
    t=$time;
    $display("time = %0t",t);
    #10
    t=$time;
    $display("time = %0t",t);
  end
endmodule

