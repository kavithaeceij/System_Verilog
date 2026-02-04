//(Class, Handle, Object, Properties, Methods — with comments)

// -----------------------------
// Class definition
// -----------------------------
// A class is a blueprint. It does NOT occupy memory by itself.
class student;

  // Class properties (data members)
  int id;
  int marks;

  // Class method (function)
  // This method displays the student details
  function void display();
    $display("Student ID = %0d, Marks = %0d", id, marks);
  endfunction

endclass


// -----------------------------
// Test module
// -----------------------------
module test;

  initial begin

    // -----------------------------
    // Step 1: Declare a class handle
    // -----------------------------
    // At this point, NO object is created.
    // The handle 's' does not point to any object yet.
    student s;

    // -----------------------------
    // Step 2: Create the object
    // -----------------------------
    // new() allocates memory at runtime and creates the object.
    // The handle 's' now points to the created object.
    s = new();

    // -----------------------------
    // Step 3: Access class properties
    // -----------------------------
    // Properties are accessed using the handle.
    s.id    = 101;
    s.marks = 85;

    // -----------------------------
    // Step 4: Call class method
    // -----------------------------
    // Method is called using the handle.
    s.display();

  end

endmodule
