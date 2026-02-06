// Global constant demonstration

class data;

  // Global constant
  static const int DATA_WIDTH = 32;

endclass


module test;

  // Declare object at module level (safer for some simulators)
  data c1;

  initial begin
    // Create object
    c1 = new();

    // Access global constant using class name
    $display("Using class scope: %0d", data::DATA_WIDTH);

    // Access through object
    $display("Using object: %0d", c1.DATA_WIDTH);
  end

endmodule
