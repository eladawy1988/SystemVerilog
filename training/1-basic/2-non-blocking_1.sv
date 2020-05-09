// this is non-Blocking assignment statements  example

 
module tb;
  reg [7:0] a, b, c, d, e;
 
  initial begin
    a <= 8'hDA;
    $display ("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
    b <= 8'hF1;
    $display ("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
    c <= 8'h30;
    $display ("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
  end
 
  initial begin
    d <= 8'hAA;
    $display ("[%0t] d=0x%0h e=0x%0h", $time, d, e);
    e<= 8'h55;
    $display ("[%0t] d=0x%0h e=0x%0h", $time, d, e);
  end
endmodule  
 




/* output 


[0] a=0xx b=0xx c=0xx
[0] a=0xx b=0xx c=0xx
[0] a=0xx b=0xx c=0xx
[0] d=0xx e=0xx
[0] d=0xx e=0xx

*/
