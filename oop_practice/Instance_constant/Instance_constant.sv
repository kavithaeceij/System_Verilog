//=============================================================
// File: instance_constant_example.sv
// Description: Demonstration of instance constant property
//=============================================================

class packet;

  // Instance constant (per object)
  const int id;//here if we dont give value to const then it is consider as instance const

  // Constructor assigns value once
  function new(int x);
    id = x;
  endfunction

endclass


module instance_constant_test;

  // Declare objects at module level (safe for all simulators)
  packet p1;
  packet p2;

  initial begin
    // Create objects with different constant values
    p1 = new(5);
    p2 = new(10);

    // Display values
    $display("p1.id = %0d", p1.id);
    $display("p2.id = %0d", p2.id);

    // The following line would cause an error:
    // p1.id = 20;  // Not allowed (const variable)
  end

endmodule

