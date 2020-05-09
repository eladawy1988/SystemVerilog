// Multiple matches in unique-if



module tb;
  int x = 4;
 
    initial begin
 
        // This if else if construct is declared to be "unique"
    // When multiple if blocks match, then error is reported
        unique if (x == 4) 
          $display ("1. x is %0d", x);
        else if (x == 4)
          $display ("2. x is %0d", x);
        else
          $display ("x is not 4");
    end
endmodule
 


/* output
# ** Warning: (vsim-8360) The if/case statement is not unique.
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#8 File: 6-unique_2.sv Line: 12
# 1. x is 4


*/
