// Nested fork join_any

 
module tb;
  initial begin
      $display ("[%0t] Main Thread: Fork join going to start", $time);
    fork
      fork
              display (20, "Thread1_0");
              display (30, "Thread1_1");
            join_any
          display (10, "Thread2");              
        join_any
      $display ("[%0t] Main Thread: Fork join has finished", $time);
  end
 
  task display (int _time, string t_name);
    #(_time) $display ("[%0t] %s", $time, t_name);
  endtask
endmodule




/* output
# [0] Main Thread: Fork join going to start
# [10] Thread2
# [10] Main Thread: Fork join has finished
# [20] Thread2
# [30] Thread2

*/
