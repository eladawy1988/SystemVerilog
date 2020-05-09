typedef enum bit [1:0] {RED, YELLOW, GREEN} e_light;
 
module tb;
  e_light light;
 
  initial begin
    light = GREEN;        
    $display ("light = %s", light.name());
 
    // Invalid because of strict typing rules
 //   light = 0;                               /// assigning integer without cast may generate an compilation error
    $display ("light = %s", light.name());
 
    // OK when explicitly cast
    light = e_light'(1);      // doing explicit cast
    $display ("light = %s", light.name()); 
 
    // OK. light is auto-cast to integer
    if (light == RED | light == 2)
      $display ("light is now %s", light.name());
 
  end    
endmodule
 
/* output

# light = GREEN
# light = GREEN
# light = YELLOW


*/
