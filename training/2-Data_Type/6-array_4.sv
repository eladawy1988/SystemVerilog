// Single Dimensional Unpacked Array

module tb;
  byte   stack [8];     // depth = 8, 1 byte wide variable
 
  initial begin
    // Assign random values to each slot of the stack
    foreach (stack[i]) begin
      stack[i] = $random;
      $display ("Assign 0x%0h to index %0d", stack[i], i);
    end
 
    // Print contents of the stack
    $display ("stack = %p", stack);
  end
endmodule


/*output 

Assign 0x24 to index 0
Assign 0x81 to index 1
Assign 0x9 to index 2
Assign 0x63 to index 3
Assign 0xd to index 4
Assign 0x8d to index 5
Assign 0x65 to index 6
Assign 0x12 to index 7
stack = '{'h24, 'h81, 'h9, 'h63, 'hd, 'h8d, 'h65, 'h12}


*/
