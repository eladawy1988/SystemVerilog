// Example 1
 
class Fruits;
  rand bit[3:0]  num;         // Declare a 4-bit variable that can be randomized
 
  constraint c_num { num > 4;      // Constraint is by default enabled, and applied
                    num < 9; };   // during randomization giving num a value between 4 and 9
endclass
 
module tb;
  initial begin
    Fruits f = new ();
    $display ("Before randomization num = %0d", f.num);   
    // Disable constraint 
    f.c_num.constraint_mode(0);
 
    if (f.c_num.constraint_mode ())
      $display ("Constraint c_num is enabled");
    else
      $display ("Constraint c_num is disabled");
    // Randomize the variable and display
    f.randomize ();
    $display ("After randomization num = %0d", f.num);    
  end
endmodule



/* output
Before randomization num = 0
Constraint c_num is disabled
After randomization num = 15



*/
