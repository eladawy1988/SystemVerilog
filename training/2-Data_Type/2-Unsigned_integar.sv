 module tb;
  // In this case, we are going to make it unsigned which means
  // that MSB no longer holds the sign information and hence these
  // variables can only store positive values
  shortint unsigned     var_a;      
  int      unsigned    var_b;
  longint  unsigned   var_c;
 
  initial begin
    // Print initial values of the integer variables
    $display ("Sizes var_a=%0d var_b=%0d var_c=%0d", $bits(var_a), $bits(var_b), $bits(var_c));
 
    // Assign the maximum value for each of the variables
    #1 var_a = 'hFFFF;                  
       var_b = 'hFFFF_FFFF;             
       var_c = 'hFFFF_FFFF_FFFF_FFFF;   
 
    // When added a 1, value rolls over to 0
    #1 var_a += 1;   // Value becomes 'h0
       var_b += 1;   // Value becomes 'h0
       var_c += 1;
  end
 
  // Start a monitor to print out values of each variables as they change
  initial
    $monitor ("var_a=%0d var_b=%0d var_c=%0d", var_a, var_b, var_c);
endmodule
 



/* output 

Sizes var_a=16 var_b=32 var_c=64
var_a=0 var_b=0 var_c=0
var_a=65535 var_b=4294967295 var_c=18446744073709551615
var_a=0 var_b=0 var_c=0

*/
