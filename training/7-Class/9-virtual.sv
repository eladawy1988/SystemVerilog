// Virtual Methods example (Not Work)


// Without declaring display() as virtual
class Packet;
   int addr;
 
   function new (int addr);
      this.addr = addr;
   endfunction
 
   // This is a normal function definition which 
   // starts with the keyword "function"
  virtual function void display ();
    $display ("[Base] addr=0x%0h", addr);
   endfunction
endclass

// A subclass called 'ExtPacket' is derived from the base class 'Packet' using
// 'extends' keyword which makes 'EthPacket' a child of the parent class 'Packet'
// The child class inherits all variables and methods from the parent class
class ExtPacket extends Packet;
 
  // This is a new variable only available in child class
  int data;     
 
   function new (int addr, data);
      super.new (addr);   // Calls 'new' method of parent class
      this.data = data;
   endfunction
 
  function display ();
    $display ("[Child] addr=0x%0h data=0x%0h", addr, data);
  endfunction
endclass
 

 
module tb;
   Packet bc;
   ExtPacket sc;
 
  initial begin
        sc = new (32'hfeed_feed, 32'h1234_5678);  
 
        bc = sc; 
    bc.display ();
  end
endmodule

/* output

-- Compiling package _92dvirtual_sv_unit
** Error: 9-virtual.sv(32): Virtual method 'display' has more arguments than the method in class 'Packet' or a return type mismatch
-- Compiling module tb
** Error: 9-virtual.sv(32): Virtual method 'display' has more arguments than the method in class 'Packet' or a return type mismatch
*/
