// -----------------------------
// Parent class
// -----------------------------
class student;

  int id;

  function void display();
    $display("Student ID = %0d", id);
  endfunction

endclass


// -----------------------------
// Child class
// -----------------------------
class college_student extends student;

  int marks;

  function void display();
    // Call parent class method
    super.display();

    // Child-specific behavior
    $display("Marks = %0d", marks);
  endfunction

endclass
// -----------------------------
// Test module
// -----------------------------
module test;

  college_student s;

  initial begin
    s = new();

    // Parent property
    s.id = 101;

    // Child property
    s.marks = 85;

    // Call overridden method
    s.display();
  end

endmodule

