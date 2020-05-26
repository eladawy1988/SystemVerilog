// Virtual Methods example (Not Work)

class Packet;
  static int ctr=0;
 
   function new ();
      ctr++;
   endfunction
 
  static function get_pkt_ctr ();
    $display ("ctr=%0d", ctr);
  endfunction
 
endclass
 
module tb;
  Packet pkt [6];
  initial begin
    for (int i = 0; i < $size(pkt); i++) begin
      pkt[i] = new;
    end
    Packet::get_pkt_ctr();   // Static call using :: operator
    pkt[5].get_pkt_ctr();   // Normal call using instance
  end
endmodule


/* output

ctr=6
ctr=6


*/
