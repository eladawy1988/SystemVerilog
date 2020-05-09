module tb;
  // "e_true_false" is a new data-type with two valid values: TRUE and FALSE
  typedef enum {TRUE, FALSE} e_true_false;       
 
  initial begin
    // Declare a variable of type "e_true_false" that can store TRUE or FALSE
    e_true_false  answer;                       
 
    // Assign TRUE/FALSE to the enumerated variable
    answer = TRUE;
 
    // Display string value of the variable
    $display ("answer = %s", answer.name);
  end
endmodule

