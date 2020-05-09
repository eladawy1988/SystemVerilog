// Example #1 - while loop

 
module tb;
  initial begin
    int cnt = 0;
    do begin
      $display("cnt = %0d", cnt);
      cnt++;
    end while (cnt < 5);
  end
endmodule


/* output

cnt = 0
cnt = 1
cnt = 2
cnt = 3
cnt = 4


*/
