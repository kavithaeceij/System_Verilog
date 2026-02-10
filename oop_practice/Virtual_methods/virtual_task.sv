class parent;

  // virtual task in base class
  virtual task run();
    $display("Parent run task");
  endtask

endclass


class child extends parent;

  // override task in child class
  task run();
    $display("Child run task");
  endtask

endclass


module test;

  parent p;   // base class handle
  child c;    // child class handle

  initial begin
    c = new();   // create child object
    p = c;       // base handle points to child object

    p.run();     // virtual task call
  end

endmodule

//Expected Output
//Child run task
