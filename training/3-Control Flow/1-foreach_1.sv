//Example #1: Single dimensional Arrays
 
module tb;
  int array[5] = '{1, 2, 3, 4, 5};
  int sum;
  initial begin
    // Here, "i" is the iterator and can be named as anything you like
    // Iterate through each element from index 0 to end using a foreach
    // loop.
    foreach (array[i])
      $display ("array[%0d] = %0d", i, array[i]);
 
    // Multiple statements in foreach loop requires begin end
    // Here, we are calculating the sum of all numbers in the array
    // And because there are 2 statements within foreach there should
    // be a begin-end
    foreach (array[l_index]) begin
      sum += array[l_index];
      $display ("array[%0d] = %0d, sum = %0d", l_index, array[l_index], sum);
    end
  end
endmodule


/* output
array[0] = 1
array[1] = 2
array[2] = 3
array[3] = 4
array[4] = 5
array[0] = 1, sum = 1
array[1] = 2, sum = 3
array[2] = 3, sum = 6
array[3] = 4, sum = 10
array[4] = 5, sum = 15

*/
