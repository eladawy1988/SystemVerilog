// fork join_any Example

 
module tb;
  initial begin
      $display ("[%0t] Main Thread: Fork join going to start", $time);
    fork
          display (20, "Thread1_0");
          //#20 $display ("[%0t] Thread1_0 ...", $time);
          display (30, "Thread1_1");
          //#30 $display ("[%0t] Thread1_1 ...", $time);
          display (10, "Thread2");      
          //#10 $display ("[%0t] Thread2 ...", $time);        
    join_any
      $display ("[%0t] Main Thread: Fork join has finished", $time);
  end
 
  task display (int _time, string t_name);
    #(_time) $display ("[%0t] %s", $time, t_name);
  endtask
endmodule 



/* output

[0] Main Thread: Fork join going to start
[10] Thread2
[20] Thread2
[30] Thread2
[30] Main Thread: Fork join has finished

*/
