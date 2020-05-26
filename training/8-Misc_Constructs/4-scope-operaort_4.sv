// scope operaot  example :4. Avoid namespace collision

package my_pkg;
  typedef enum bit {FALSE, TRUE} e_bool;
endpackage
 
import my_pkg::*;
 
module tb;
  typedef enum bit {TRUE, FALSE} e_bool;
 
  initial begin
    e_bool val;
 
    // Be explicit and say that TRUE from my_pkg
    // should be assigned to val
    val = my_pkg::TRUE;
    $display("val = 0x%0h", val);
 
    // TRUE from current scope will be assigned to
    // val
    val = TRUE;
    $display("val = 0x%0h", val);
  end
endmodule



/* output

val = 0x1
val = 0x0

*/
