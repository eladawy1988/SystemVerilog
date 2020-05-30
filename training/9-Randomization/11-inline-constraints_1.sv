// Example : Inline Constraints

 
class Item;
  rand bit [7:0] id;
 
  constraint c_id { id < 25; }
 
endclass
 
module tb;
 
  initial begin
    Item itm = new ();
    itm.randomize() with { id == 10; };     // In-line constraint using with construct
    $display ("Item Id = %0d", itm.id);
  end
endmodule



/* output

# KERNEL: Item Id = 10


*/
