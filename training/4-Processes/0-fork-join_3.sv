// Example #2 - Nested fork join  Example #2

 
module tb;
  initial begin
      $display ("[%0t] Main Thread: Fork join going to start", $time);
    fork
           fork // Thread 1
              #50 $display ("[%0t] Thread1_0 ...", $time);
              #70 $display ("[%0t] Thread1_1 ...", $time);
              begin
                #10 $display ("[%0t] Thread1_2 ...", $time);
                #100 $display ("[%0t] Thread1_2 finished", $time);
              end
            join
 
      // Thread 2
            begin
                #5 $display ("[%0t] Thread2 ...", $time);
                #10 $display ("[%0t] Thread2 finished", $time);
            end
 
            // Thread 3
      #20 $display ("[%0t] Thread3 finished", $time);
    join
      $display ("[%0t] Main Thread: Fork join has finished", $time);
  end
endmodule



/* output


|---|-----|----------|----------|---------------|
0   5     10         20         50              120
    |     |----------------------------110       
    -----------|
               15



[0] Main Thread: Fork join going to start
[5] Thread2 ...
[10] Thread1_2 ...
[15] Thread2 finished
[20] Thread3 finished
[50] Thread1_0 ...
[70] Thread1_1 ...
[110] Thread1_2 finished
[110] Main Thread: Fork join has finished


*/
