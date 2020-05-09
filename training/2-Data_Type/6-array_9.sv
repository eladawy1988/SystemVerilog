// Copying dynamic array example


module tb;
  // Create two dynamic arrays of type int
  int array [];
  int id [];
 
  initial begin
    // Allocate 5 memory locations to "array" and initialize with values
    array = new [5];
    array = '{1, 2, 3, 4, 5};
 
    // Point "id" to "array"
    id = array;
 
    // Display contents of "id"
    $display ("id = %p", id);
 
    // Grow size by 1 and copy existing elements to the new dyn.Array "id"
    id = new [id.size() + 1] (id);
 
    // Assign value 6 to the newly added location [index 5]
    id [id.size() - 1] = 6;
 
    // Display contents of new "id"
    $display ("New id = %p", id);
 
    // Display size of both arrays
    $display ("array.size() = %0d, id.size() = %0d", array.size(), id.size());
  end
endmodule 


/*output 

id = '{1, 2, 3, 4, 5}
New id = '{1, 2, 3, 4, 5, 6}
array.size() = 5, id.size() = 6


*/
