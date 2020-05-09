// Using array ordering on classes


class Register;
  string name;
  rand bit [3:0] rank;
  rand bit [3:0] pages;
 
  function new (string name);
    this.name = name;
  endfunction
 
  function void print();
    $display("name=%s rank=%0d pages=%0d", name, rank, pages);
  endfunction
 
endclass
 
module tb;
  Register rt[4];
  string name_arr[4] = '{"alexa", "siri", "google home", "cortana"};
 
  initial begin
    $display ("
-------- Initial Values --------");
    foreach (rt[i]) begin
      rt[i] = new (name_arr[i]);
      rt[i].randomize();
      rt[i].print();
    end
 
    $display ("
--------- Sort by name ------------");
 
 
 
 
    rt.sort(x) with (x.name);
    foreach (rt[i]) rt[i].print();
 
    $display ("
--------- Sort by rank, pages -----------");
 
    rt.sort(x) with ( {x.rank, x.pages});
    foreach (rt[i]) rt[i].print();
  end
endmodule
 
/*
# -------- Initial Values --------
# name=alexa rank=13 pages=11
# name=siri rank=11 pages=15
# name=google home rank=12 pages=10
# name=cortana rank=8 pages=3
# 
# --------- Sort by name ------------
# name=alexa rank=13 pages=11
# name=cortana rank=8 pages=3
# name=google home rank=12 pages=10
# name=siri rank=11 pages=15
# 
# --------- Sort by rank, pages -----------
# name=cortana rank=8 pages=3
# name=siri rank=11 pages=15
# name=google home rank=12 pages=10
# name=alexa rank=13 pages=11


*/
