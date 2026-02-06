// ------------------------------------
// Parent class
// ------------------------------------
class parent;

  int a;

  // Parent constructor
  function new();
    a = 10;   // initialize parent variable
  endfunction

  // Declare display method (definition outside)
  extern function void display();

endclass : parent


// ------------------------------------
// Child class
// ------------------------------------
class child extends parent;

  int b;

  // Child constructor
  function new();
    super.new();  // constructor chaining (VERY IMPORTANT)
    b = 20;       // initialize child variable
  endfunction

  // Declare display method (definition outside)
  extern function void display();

endclass : child


// ------------------------------------
// Parent method definition
// ------------------------------------
function void parent::display();
  $display("Parent variable a = %0d", a);
endfunction


// ------------------------------------
// Child method definition (method chaining)
// ------------------------------------
function void child::display();

  // Call parent display first (method chaining)
  super.display();

  // Then execute child-specific code
  $display("Child variable b = %0d", b);

endfunction


// ------------------------------------
// Test module
// ------------------------------------
module chaining_example;

  child c;

  initial begin
    c = new();     // creates object, runs parent & child constructors
    c.display();   // runs parent & child display methods
  end

endmodule : chaining_example
// Expected Output
//Parent variable a = 10
//Child variable b = 20
