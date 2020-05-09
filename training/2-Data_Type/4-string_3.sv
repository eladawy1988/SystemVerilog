module tb;
   string str = "Hello World!";
 
   initial begin
       string tmp;
 
    // Print length of string "str"
      $display ("str.len() = %0d", str.len());
 
      // Assign to tmp variable and put char "d" at index 3
      tmp = str;
      tmp.putc (3,"d");
      $display ("str.putc(3, d) = %s", tmp);
 
      // Get the character at index 2
      $display ("str.getc(2) = %s (%0d)", str.getc(2), str.getc(2));
 
      // Convert all characters to lower case
      $display ("str.tolower() = %s", str.tolower());
 
      // Comparison
      tmp = "Hello World!";
      $display ("[tmp,str are same] str.compare(tmp) = %0d", str.compare(tmp));
      tmp = "How are you ?";
      $display ("[tmp,str are diff] str.compare(tmp) = %0d", str.compare(tmp));
 
      // Ignore case comparison
      tmp = "hello world!";
      $display ("[tmp is in lowercase] str.compare(tmp) = %0d", str.compare(tmp));
      tmp = "Hello World!";
      $display ("[tmp,str are same] str.compare(tmp) = %0d", str.compare(tmp));
 
      // Extract new string from i to j
      $display ("str.substr(4,8) = %s", str.substr (4,8));
 
   end
endmodule
 

/* output 

str.len() = 12                               
str.putc(3, d) = Heldo World!
str.getc(2) = l (108)
str.tolower() = hello world!
[tmp,str are same] str.compare(tmp) = 0
[tmp,str are diff] str.compare(tmp) = -1
[tmp is in lowercase] str.compare(tmp) = -1
[tmp,str are same] str.compare(tmp) = 0
str.substr(4,8) = o Wor

*/
