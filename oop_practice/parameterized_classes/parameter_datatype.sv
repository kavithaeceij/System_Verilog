//-------------------------------------------------------------
// Parameterized class by type example
//-------------------------------------------------------------

// Class definition with type parameter
// T is a type parameter with default type = int
class box #(parameter type T = int);

  // Data type depends on T
  // If T = int    → int data;
  // If T = string → string data;
  T data;

  // Constructor: assigns value to data
  function new(T d);
    data = d;
  endfunction

  // Display function
  function void display();
    $display("data = %0p", data);
  endfunction

endclass


module test;

  // Object 1: box of integers
  // Here T = int
  box #(int) b1;

  // Object 2: box of strings
  // Here T = string
  box #(string) b2;

  initial begin

    // Create objects and pass values
    b1 = new(25);        // int data
    b2 = new("Hello");   // string data

    // Display stored values
    b1.display();
    b2.display();

  end

endmodule
//Expected Output
//data = 25
//data = Hello
