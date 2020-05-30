// Example : Inline Constraints

 
class Item;
  rand bit [7:0] id;
 
  constraint c_id { id == 25; }
endclass
 
module tb;
  initial begin
    Item itm = new ();
    if (! itm.randomize() with { id < 10; })
      $display ("Randomization failed");
    $display ("Item Id = %0d", itm.id);
  end
endmodule




/* output

** Warning: 11-inline-constraints_2.sv(12): (vlog-2244) Variable 'itm' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.
-- Compiling package _112dinline2dconstraints_2_sv_unit
-- Compiling module tb
** Warning: 11-inline-constraints_2.sv(12): (vlog-2244) Variable 'itm' is implicitly static. You must either explicitly declare it as static or automatic
or remove the initialization in the declaration of variable.



*/
