// disable random example : After using rand_mode()

 
 
// Create a class that contains random variables
class Fruits;
  rand bit [3:0] var1;
  rand bit [1:0] var2;
endclass
 
module tb;
 
  initial begin
    Fruits f = new(); 
    $display ("Before randomization var1=%0d var2=%0d", f.var1, f.var2);
 
    // Turns off randomization for all variables
    f.rand_mode (0);    
 
    if (! f.var1.rand_mode())
      if (! f.var2.rand_mode())
        $display ("Randomization of all variables disabled");
 
    f.randomize();
 
    $display ("After randomization var1=%0d var2=%0d", f.var1, f.var2);
  end
endmodule



/* output


# Before randomization var1=0 var2=0
# Randomization of all variables disabled
# After randomization var1=0 var2=0



*/
