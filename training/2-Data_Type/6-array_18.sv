// Array Reduction Methods

 
module tb;
  int array[4] = '{1, 2, 3, 4};
  int res[$];
 
  initial begin
    $display ("sum     = %0d", array.sum());    
    $display ("product = %0d", array.product());    
    $display ("and     = 0x%0h", array.and());
    $display ("or      = 0x%0h", array.or());    
    $display ("xor     = 0x%0h", array.xor());   
  end
endmodule

 
/*
sum     = 10
product = 24
and     = 0x0
or      = 0x7
xor     = 0x4


*/
