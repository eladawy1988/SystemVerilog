// SystemVerilog Nested fork join_none


 
module tb;
  initial begin
      $display ("[%0t] Main Thread: Fork join going to start", $time);
    fork
          begin
      fork
              display (20, "Thread1_0");
              display (30, "Thread1_1");
            join_none
            $display("[%0t] Nested fork has finished", $time);
          end
          display (10, "Thread2");              
        join_none
      $display ("[%0t] Main Thread: Fork join has finished", $time);
  end
 
  task display (int _time, string t_name);
    #(_time) $display ("[%0t] %s", $time, t_name);
  endtask
endmodule




/* output
 
[0] Main Thread: Fork join going to start
[0] Main Thread: Fork join has finished
[0] Nested fork has finished
[10] Thread2
[20] Thread2
[30] Thread2

*/
