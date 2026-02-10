class parent;

  // non-virtual function
  function void show1();
    $display("Parent show1 (non-virtual)");
  endfunction

  // virtual function
  virtual function void show2();
    $display("Parent show2 (virtual)");
  endfunction

endclass


class child extends parent;

  // override non-virtual function
  function void show1();
    $display("Child show1 (non-virtual)");
  endfunction

  // override virtual function
  function void show2();
    $display("Child show2 (virtual)");
  endfunction

endclass


module test;

  parent p;   // base class handle
  child c;    // child class handle

  initial begin
    c = new();   // create child object
    p = c;       // parent handle → child object

    // non-virtual call
    p.show1();

    // virtual call
    p.show2();
  end

endmodule
/*Parent show1 (non-virtual)
Child show2 (virtual)
“In this example, the non-virtual method calls the parent version because the handle is parent, while the virtual method calls the child version because the object is of child type.”This single code is enough to explain the entire concept*/
