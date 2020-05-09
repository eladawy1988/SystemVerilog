module tb;
  byte          s_byte;   // By default byte is signed
  byte unsigned    u_byte;   // Byte is set to unsigned
 
  initial begin
    $display ("Size s_byte=%0d, u_byte=%0d", $bits(s_byte), $bits(u_byte));
 
    // Assign the "assumed" maximum value to both variables
    #1 s_byte = 'h7F;
       u_byte = 'h7F;
 
    // Increment by 1, and see that s_byte rolled over to negative because
    // byte is signed by default. u_byte keeps increasing because it is 
    // unsigned and can go upto 255
    #1 s_byte += 1;
       u_byte += 1;
 
    // Assign 255 (8'hFF) to u_byte -> this is the max value it can hold
    #1 s_byte = 'hFF;
       u_byte = 'hFF;


    // Add 1 and see that it rolls over to 0
    #1 s_byte += 1;
       u_byte += 1;

  end
 
  initial begin
    $monitor ("[%0t ns] s_byte=%0d u_byte=%0d", $time, s_byte, u_byte);
  end
endmodule


/* output 

<pre># Size s_byte=8, u_byte=8
# [0 ns] s_byte=0 u_byte=0
# [1 ns] s_byte=127 u_byte=127
# [2 ns] s_byte=-128 u_byte=128
# [3 ns] s_byte=-128 u_byte=255
# [4 ns] s_byte=-128 u_byte=0

*/
