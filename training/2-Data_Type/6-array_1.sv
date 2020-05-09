// Single Dimensional Packed Arrays


module tb;
  bit [7:0]   m_data;   // A vector or 1D packed array
 
  initial begin
    // 1. Assign a value to the vector
    m_data = 8'hA2; 
 
    // 2. Iterate through each bit of the vector and print value
    for (int i = 0; i < $size(m_data); i++) begin
      $display ("m_data[%0d] = %b", i, m_data[i]);
    end
  end
endmodule
 

/*output 

m_data[0] = 0
m_data[1] = 1
m_data[2] = 0
m_data[3] = 0
m_data[4] = 0
m_data[5] = 1
m_data[6] = 0
m_data[7] = 1


*/
