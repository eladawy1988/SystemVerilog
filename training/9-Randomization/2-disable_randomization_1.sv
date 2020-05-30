// disable random example : Without using rand_mode()

 
// Create a class that contains random variables
class Fruits;
  rand bit [3:0] var1;
  rand bit [1:0] var2;
endclass
 
module tb;
  initial begin
    // Instantiate an object of the class
    Fruits f = new(); 
 
    // Print values of those variables before randomization
    $display ("Before randomization var1=%0d var2=%0d", f.var1, f.var2);
 
    // rand_mode() is called as a function which returns the state of the given variable
    // If it is enabled, then print a statement
    if (f.var1.rand_mode())
      if (f.var2.rand_mode())
          $display ("Randomization of all variables enabled");
 
    // Randomize the class object which in turn randomizes all internal variables
    // declared using rand/randc keywords
    f.randomize();
 
    // Print the value of these variables after randomization
    $display ("After randomization var1=%0d var2=%0d", f.var1, f.var2);
  end
endmodule

/* output


Before randomization var1=0 var2=0
Randomization of all variables enabled
After randomization var1=15 var2=3


*/
