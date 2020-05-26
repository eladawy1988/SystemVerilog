// Class Object Example example

// Create a new class with a single member called
// count that stores integer values
class Packet;
  int count;
endclass
 
module tb;
    // Create a "handle" for the class Packet that can point to an
    // object of the class type Packet
    // Note: This "handle" now points to NULL
  Packet pkt;
    initial begin
      if (pkt == null)
        $display ("Packet handle 'pkt' is null");
      // Call the new() function of this class
      pkt = new();
 
      if (pkt == null)
        $display ("What's wrong, pkt is still null ?");
      else
        $display ("Packet handle 'pkt' is now pointing to an object, and not NULL");
      // Display the class member using the "handle"
      $display ("count = %0d", pkt.count);
    end
endmodule 




/* output

Packet handle 'pkt' is null
Packet handle 'pkt' is now pointing to an object, and not NULL

*/
