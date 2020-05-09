// SystemVerilog Dynamic Array



module tb;
  // Create a dynamic array that can hold elements of type int
  int   array [];       
 
  initial begin
    // Create a size for the dynamic array -> size here is 5
    // so that it can hold 5 values
    array = new [5];       
 
    // Initialize the array with five values
    array = '{31, 67, 10, 4, 99};
 
    // Loop through the array and print their values
    foreach (array[i]) 
      $display ("array[%0d] = %0d", i, array[i]);
  end
endmodule 

/*output 

array[0] = 31
array[1] = 67
array[2] = 10
array[3] = 4
array[4] = 99


*/
