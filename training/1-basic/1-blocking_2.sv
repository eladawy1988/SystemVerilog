// this is Blocking assignment statements  example

module tb;
  reg [7:0] a, b, c, d, e;
 
  initial begin
    a = 8'hDA;
    $display ("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
    #10 b = 8'hF1;
    $display ("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
    c = 8'h30;
    $display ("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
  end
 
  initial begin
    #5 d = 8'hAA;
    $display ("[%0t] d=0x%0h e=0x%0h", $time, d, e);
   #5 e = 8'h55;
    $display ("[%0t] d=0x%0h e=0x%0h", $time, d, e);
  end
endmodule



/* output 


[0] a=0xda b=0xx c=0xx
[5] d=0xaa e=0xx
[10] a=0xda b=0xf1 c=0xx
[10] a=0xda b=0xf1 c=0x30
[10] d=0xaa e=0x55

*/
