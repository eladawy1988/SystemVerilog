// Dynamic Array Methods 


module tb;
  // Create a dynamic array that can hold elements of type string
  string   fruits [];       
 
  initial begin
    // Create a size for the dynamic array -> size here is 5
    // so that it can hold 5 values
        fruits = new [3];       
 
    // Initialize the array with five values
        fruits = '{"apple", "orange", "mango"};
 
        // Print size of the dynamic array
    $display ("fruits.size() = %0d", fruits.size());
 
    // Empty the dynamic array by deleting all items
    fruits.delete();
    $display ("fruits.size() = %0d", fruits.size());
  end
endmodule


/*output 

fruits.size() = 3
fruits.size() = 0


*/
