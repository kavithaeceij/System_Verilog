// ------------------------------------
// Class declaration
// ------------------------------------
class student;

  // Class property
  int id;

  // ------------------------------------
  // extern function declaration
  // This tells the compiler:
  // "This function exists, I will define it later"
  // ------------------------------------
  extern function void display();

endclass : student


// ------------------------------------
// Function definition outside the class
// ------------------------------------
// student::display means:
// "This display() function belongs to class student"
function void student::display();

  // We can directly access class properties
  // because this function belongs to student
  $display("Student ID = %0d", id);

endfunction : display

module test;

  // Class handle
  student s;

  initial begin

    // Create object
    s = new();

    // Assign class property
    s.id = 101;

    // Call the function
    s.display();

  end

endmodule : test

//Expected Output
//Student ID = 101
