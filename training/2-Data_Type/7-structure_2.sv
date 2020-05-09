// need to typedef a structure
 
 
module tb;  
    // Create a structure called "st_fruit"
  // which to store the fruit's name, count and expiry date in days.
    // Note: this structure declaration can also be placed outside the module
  typedef struct {
      string fruit;
      int    count;
      byte    expiry;  
  } st_fruit;
 
  initial begin
    // st_fruit is a data type, so we need to declare a variable of this data type
    st_fruit fruit1 = '{"apple", 4, 15};
    st_fruit fruit2;
 
    // Display the structure variable
    $display ("fruit1 = %p fruit2 = %p", fruit1, fruit2);
 
    // Assign one structure variable to another and print
    // Note that contents of this variable is copied into the other
     fruit2 = fruit1;
    $display ("fruit1 = %p fruit2 = %p", fruit1, fruit2);
 
    // Change fruit1 to see if fruit2 is affected
    fruit1.fruit = "orange";
    $display ("fruit1 = %p fruit2 = %p", fruit1, fruit2);
  end
endmodule


/* output

fruit1 = '{fruit:"apple", count:4, expiry:'hf} fruit2 = '{fruit:"", count:0, expiry:'h0}
fruit1 = '{fruit:"apple", count:4, expiry:'hf} fruit2 = '{fruit:"apple", count:4, expiry:'hf}
fruit1 = '{fruit:"orange", count:4, expiry:'hf} fruit2 = '{fruit:"apple", count:4, expiry:'hf}

*/
