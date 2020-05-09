module tb;
  bit       var_a;       // Declare a 1 bit variable of type "bit"
  bit [3:0] var_b;       // Declare a 4 bit variable of type "bit"
 
  logic [3:0] x_val;     // Declare a 4 bit variable of type "logic"
 
  initial begin
 
    // Initial value of "bit" data type is 0
    $display ("Initial value var_a=%0b var_b=0x%0h", var_a, var_b);
 
    // Assign new values and display the variable to see that it gets the new values
    var_a = 1;
    var_b = 4'hF;
    $display ("New values    var_a=%0b var_b=0x%0h", var_a, var_b);
 
    // If a "bit" type variable is assigned with a value greater than it can hold
    // the left most bits are truncated. In this case, var_b can hold only 4 bits
    // and hence 'h481 gets truncated leaving var_b with only 'ha;
    var_b = 16'h481a;
    $display ("Truncated value: var_b=0x%0h", var_b);
 
    // If a logic type or any 4-state variable assigns its value to a "bit" type 
    // variable, then X and Z get converted to zero
    var_b = 4'b01zx;
    $display ("var_b = %b", var_b);
  end
endmodule

/* output 

Initial value var_a=0 var_b=0x0
New values    var_a=1 var_b=0xf
Truncated value: var_b=0xa
var_b = 0100


*/
