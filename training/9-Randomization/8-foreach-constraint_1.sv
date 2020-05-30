// Example

class ABC;
  rand bit[3:0] array [5];
  // This constraint will iterate through each of the 5 elements
  // in an array and set each element to the value of its
  // particular index
  constraint c_array { foreach (array[i]) {
              array[i] == i;
              }
                     }
endclass
 
module tb;
  initial begin
    ABC abc = new;
    abc.randomize();
    $display ("array = %p", abc.array);
  end
endmodule




/* output

array = '{'h0, 'h1, 'h2, 'h3, 'h4}

*/
