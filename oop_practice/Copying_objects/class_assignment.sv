// Define a class named packet
class packet;
  int data;   // data field inside the object
endclass

module test;

  // Declare two object handles
  packet p1, p2;

  initial begin
    // Create a new object and assign its handle to p1
    p1 = new();

    // Set data inside the object pointed by p1
    p1.data = 30;

    // Class assignment:
    // Only the handle is copied, not the object
    // Now both p1 and p2 point to the SAME object
    p2 = p1;

    // Modify the object using p1
    // Since p1 and p2 refer to the same object,
    // this change will be visible through p2 also
    p1.data = 80;

    // Display values
    // Both will print 80 because they share the same object
    $display("p1.data = %0d", p1.data);
    $display("p2.data = %0d", p2.data);
  end

endmodule

//Final Output
//p1.data = 80
//p2.data = 80
