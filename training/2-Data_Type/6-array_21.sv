// Queue Methods Example

module tb;
  string fruits[$] = {"apple", "pear", "mango", "banana"};
 
  initial begin
    // size() - Gets size of the given queue
    $display ("Number of fruits=%0d   fruits=%p", fruits.size(), fruits);
 
    // insert() - Insert an element to the given index
    fruits.insert (1, "peach");
    $display ("Insert peach, size=%0d fruits=%p", fruits.size(), fruits);
 
    // delete() - Delete element at given index
    fruits.delete (3);
    $display ("Delete mango, size=%0d fruits=%p", fruits.size(), fruits);
 
    // pop_front() - Pop out element at the front
    $display ("Pop %s,    size=%0d fruits=%p", fruits.pop_front(), fruits.size(), fruits);
 
    // push_front() - Push a new element to front of the queue
    fruits.push_front("apricot");
    $display ("Push apricot, size=%0d fruits=%p", fruits.size(), fruits);
 
    // pop_back() - Pop out element from the back
    $display ("Pop %s,   size=%0d fruits=%p", fruits.pop_back(), fruits.size(), fruits);
 
    // push_back() - Push element to the back
    fruits.push_back("plum");
    $display ("Push plum,    size=%0d fruits=%p", fruits.size(), fruits);
  end
endmodule

 
/*
Number of fruits=4   fruits='{"apple", "pear", "mango", "banana"}
Insert peach, size=5 fruits='{"apple", "peach", "pear", "mango", "banana"}
Delete mango, size=4 fruits='{"apple", "peach", "pear", "banana"}
Pop apple,    size=3 fruits='{"peach", "pear", "banana"}
Push apricot, size=4 fruits='{"apricot", "peach", "pear", "banana"}
Pop banana,   size=3 fruits='{"apricot", "peach", "pear"}
Push plum,    size=4 fruits='{"apricot", "peach", "pear", "plum"}

*/
