// Multidimensional Packed Arrays

 
module tb;
  bit [3:0][7:0]   m_data;   // A MDA, 4 bytes
 
  initial begin
    // 1. Assign a value to the MDA
    m_data = 32'hface_cafe;
 
      $display ("m_data = 0x%0h", m_data);
 
    // 2. Iterate through each segment of the MDA and print value
      for (int i = 0; i < $size(m_data); i++) begin
        $display ("m_data[%0d] = %b (0x%0h)", i, m_data[i], m_data[i]);
    end
  end
endmodule


/*output 

m_data = 0xfacecafe
m_data[0] = 11111110 (0xfe)
m_data[1] = 11001010 (0xca)
m_data[2] = 11001110 (0xce)
m_data[3] = 11111010 (0xfa)



*/
