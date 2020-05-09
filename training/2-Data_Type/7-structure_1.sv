// Structure Example
 
module tb;  
    // Create a structure called "st_fruit"
  // which to store the fruit's name, count and expiry date in days.
    // Note: this structure declaration can also be placed outside the module
  struct {
      string fruit;
      int    count;
      byte    expiry;  
  } st_fruit;
 
  initial begin
    // st_fruit is a structure variable, so let's initialize it
    st_fruit = '{"apple", 4, 15};
 
    // Display the structure variable
    $display ("st_fruit = %p", st_fruit);
 
    // Change fruit to pineapple, and expiry to 7 
    st_fruit.fruit = "pineapple";
    st_fruit.expiry = 7;
    $display ("st_fruit = %p", st_fruit);
  end
endmodule

/* output

st_fruit = '{fruit:"apple", count:4, expiry:'hf}
st_fruit = '{fruit:"pineapple", count:4, expiry:'h7}


*/
