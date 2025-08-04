

module register;
  reg [7:0] data;
  initial begin
    data=8'b10101010;
  $display("data=%b",data);
  end
endmodule


