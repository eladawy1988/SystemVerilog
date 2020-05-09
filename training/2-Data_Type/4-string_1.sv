module tb;  
  // Declare a string variable called "dialog" to store string literals
  // Initialize the variable to "Hello!"
  string   dialog = "Hello!";            
 
  initial begin
    // Display the string using %s string format
    $display ("%s", dialog);
 
    // Iterate through the string variable to identify individual characters and print
    foreach (dialog[i]) begin
      $display ("%s", dialog[i]);
    end
  end
endmodule


/* output 

Hello!
H
e
l
l
o
!

*/
