// unique : No items match for given expression



module tb;
  bit [1:0]   abc;
 
  initial begin
    abc = 1;
 
    // None of the case items match the value in "abc"
    // A violation is reported here
    unique case (abc)
      0 : $display ("Found to be 0");
      2 : $display ("Found to be 2");
    endcase
  end

endmodule

/* output 

# ** Warning: (vsim-8315) No condition is true in the unique/priority if/case statement.


*/
