// example When accessed from outside the class


 
 
class ABC;
  // By default, all variables are public and for this example,
  // let's create two variables - one public and the other "local"
  byte      public_var;   
  local byte local_var;   
 
  // This function simply prints these variable contents
  function void display();
    $display ("public_var=0x%0h, local_var=0x%0h", public_var, local_var); 
  endfunction
endclass
 
module tb;
  initial begin
 
    ABC abc = new();
 
    // This should be able to print local members of class ABC
    // because display() is a member of ABC also
    abc.display();
 
    // Public variables can always be accessed via the class handle
    $display ("public_var = 0x%0h", abc.public_var);
  end
endmodule



/* output

public_var=0x0, local_var=0x0
public_var = 0x0



*/
