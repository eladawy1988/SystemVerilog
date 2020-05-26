// scope operaot  example 3. Using package 


package my_pkg;
  typedef enum bit {FALSE, TRUE} e_bool;
endpackage
 
module tb;
  bit val;
 
  initial begin
    // Refer to types that have been declared
    // in a package. Note that package has to 
    // be included in compilation but not 
    // necessarily "imported"
    val = my_pkg::TRUE;
    $display("val = 0x%0h", val);
  end
endmodule




/* output

val = 0x1
ncsim: *W,RNQUIE: Simulation is complete.


*/
