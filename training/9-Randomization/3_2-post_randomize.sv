// pre_randomize example

 
 
class Beverage;
  rand bit [7:0]  beer_id;
 
  constraint c_beer_id { beer_id >= 10;
                        beer_id <= 50; };
 
  function void pre_randomize ();
    $display ("This will be called just before randomization");
  endfunction
 
  function void post_randomize ();
    $display ("This will be called just after randomization");
  endfunction
 
endclass


endclass
module tb;
   Beverage b;
    initial begin
      b = new ();
      $display ("Initial beerId = %0d", b.beer_id);
      if (b.randomize ()) 
        $display ("Randomization successful !");
      $display ("After randomization beerId = %0d", b.beer_id);
    end
endmodule 



/* output


# KERNEL: Initial beerId = 0
# KERNEL: This will be called just before randomization
# KERNEL: This will be called just after randomization
# KERNEL: Randomization successful !
# KERNEL: After randomization beerId = 25



*/
