//if-else Constraint

 
class ABC;
  rand bit [3:0] mode;
  rand bit      mod_en;
 
  constraint c_mode {  
              // If 5 <= mode <= 11, then constrain mod_en to 1
              // This part only has 1 statement and hence do not
              // require curly braces {}
              if (mode inside {[4'h5:4'hB]}) 
                mod_en == 1;
 
              // If the above condition is false, then do the following
               else {
                          // If mode is constrained to be 1, then mod_en should be 1
                          if ( mode == 4'h1) {
                    mod_en == 1;
                            // If mode is any other value than 1 and not within
                            // 5:11, then mod_en should be constrained to 0
                } else {
                    mod_en == 0;
                }
              }
                    }
 
endclass
 
module tb;
  initial begin
    ABC abc = new;
    for (int i = 0; i < 10; i++) begin
      abc.randomize();
      $display ("mode=0x%0h mod_en=0x%0h", abc.mode, abc.mod_en);
    end
  end
 
endmodule





/* output

mode=0xb mod_en=0x1
mode=0x1 mod_en=0x1
mode=0x6 mod_en=0x1
mode=0x7 mod_en=0x1
mode=0x2 mod_en=0x0
mode=0x2 mod_en=0x0
mode=0x2 mod_en=0x0
mode=0x9 mod_en=0x1
mode=0x7 mod_en=0x1
mode=0x8 mod_en=0x1


*/
