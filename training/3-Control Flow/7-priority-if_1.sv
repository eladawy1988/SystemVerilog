//No else clause in priority-if


module tb;
  int x = 4;
 
    initial begin
        // This if else if construct is declared to be "unique"
    // Error is not reported here because there is a "else"
        // clause in the end which will be triggered when none of
        // the conditions match
      priority if (x == 3) 
          $display ("x is %0d", x);
      else if (x == 5)
          $display ("x is %0d", x);
        else
          $display ("x is neither 3 nor 5");      
 
        // When none of the conditions become true and there
        // is no "else" clause, then an error is reported
      priority if (x == 3) 
          $display ("x is %0d", x);
      else if (x == 5)
          $display ("x is %0d", x);
    end
endmodule  



/* output
# x is neither 3 nor 5
# ** Warning: (vsim-8315) No condition is true in the unique/priority if/case statement.
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#7 File: 7-priority-if_1.sv Line: 21


*/
