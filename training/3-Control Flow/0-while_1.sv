// Example #1 - while loop

 
module tb;
  initial begin
    int cnt = 0;
    while (cnt < 5) begin
      $display("cnt = %0d", cnt);
      cnt++;
    end
  end
endmodule

/* output

cnt = 0
cnt = 1
cnt = 2
cnt = 3
cnt = 4


*/
