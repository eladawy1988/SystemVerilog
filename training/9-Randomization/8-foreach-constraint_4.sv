// Example : Multidimensional Dynamic Arrays


class ABC;
  rand bit[3:0] md_array [][];   // Multidimansional Arrays with unknown size
 
  constraint c_md_array { 
     // First assign the size of the first dimension of md_array
     md_array.size() == 2; 
 
     // Then for each sub-array in the first dimension do the following:
     foreach (md_array[i]) {
 
        // Randomize size of the sub-array to a value within the range
        md_array[i].size() inside {[1:5]};
 
        // Iterate over the second dimension 
        foreach (md_array[i][j]) {
 
           // Assign constraints for values to the second dimension
           md_array[i][j] inside {[1:10]};
         }
      }
   }
 
endclass
 
module tb;
 
  initial begin
    ABC abc = new;
    abc.randomize();
    $display ("md_array = %p", abc.md_array);
  end
endmodule



/* output

md_array = '{'{'h9, 'h6, 'h7, 'h9, 'h1}, '{'h5, 'h9, 'h4, 'h2}}

*/
