// Functions pass arguments by value 
 
module tb;
 
  initial begin
    int a, res;
 
    // 1. Lets pick a random value from 1 to 10 and assign to "a"
    a = $urandom_range(1, 10);
 
    $display ("Before calling fn: a=%0d res=%0d", a, res);
 
    // Function is called with "pass by value" which is the default mode
    res = fn(a);
 
    // Even if value of a is changed inside the function, it is not reflected here
    $display ("After calling fn: a=%0d res=%0d", a, res);
  end
 
  // This function accepts arguments in "pass by value" mode
  // and hence copies whatever arguments it gets into this local 
  // variable called "a". 
  function int fn(int a);
 
    // Any change to this local variable is not
    // reflected in the main variable declared above within the 
    // initial block
    a = a + 5;
 
    // Return some computed value
    return a * 10;
  endfunction
 


/* output 
# Before calling fn: a=3 res=0
# After calling fn: a=8 res=80

*/
