// In-class Constraint Example
 
 
 
// Let's declare a new class called "ABC" with a single variable that 
// can be randomized. We want this variable to have values between 2 and 6.
// when randomized. This is achieved by a constraint called "c_mode" (you
// can name it anything else).
class ABC;
  rand bit [3:0] mode;
 
    // This constraint block ensures that the randomized
    // value of "mode" meets the condition 2 < mode <= 6;
  constraint c_mode { mode > 2; 
                      mode <= 6; 
                    };
endclass
 
module tb;
  ABC abc;
 
  initial begin
        // Create a new object with this handle
    abc = new();
 
        // In a for loop, lets randomize this class handle
        // 5 times and see how the value of mode changes
        // A class can be randomized by calling its "randomize()"
    for (int i = 0; i < 5; i++) begin
      abc.randomize();
          $display ("mode = 0x%0h", abc.mode);
    end
  end
endmodule



/* output

mode = 0x6
mode = 0x6
mode = 0x5
mode = 0x4
mode = 0x5



*/
