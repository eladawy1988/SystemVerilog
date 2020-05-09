// unique : More than one case item matches


 
module tb;
  bit [1:0]   abc;
 
  initial begin
    abc = 0;
 
    // Multiple case items match the value in "abc"
    // A violation is reported here
    unique case (abc)
      0 : $display ("Found to be 0");
      0 : $display ("Again found to be 0");
      2 : $display ("Found to be 2");
    endcase
  end
endmodule
 


/* output 

# ** Warning: (vsim-8360) The if/case statement is not unique.
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#8 File: 8-unique-case_v2.sv Line: 13
# Found to be 0

*/
