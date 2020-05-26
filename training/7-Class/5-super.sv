// example Accessing base class methods

 
class Packet;
  int addr;
 
  function display ();
    $display ("[Base] addr=0x%0h", addr);
  endfunction
endclass
 
class extPacket extends Packet;
  function display();
    super.display();                          // Call base class display method
    $display ("[Child] addr=0x%0h", addr);
  endfunction
 
  function new ();
    super.new ();
  endfunction
endclass
 
module tb;
   Packet p;
    extPacket ep;
 
    initial begin
      ep = new();
      p = new();
      ep.display();
    end
endmodule  
 


/* output
[Base] addr=0x0
[Child] addr=0x0



*/
