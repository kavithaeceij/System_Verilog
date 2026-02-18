class transaction;

  static int count = 0; // static property

  function new();
    count++;             // increment shared counter
  endfunction

endclass


module test;

  initial begin
    transaction t1 = new();
    transaction t2 = new();
    transaction t3 = new();

    $display("Total transactions = %0d",
             transaction::count);
  end

endmodule
//Total transactions = 3
/*Why do we use static property?

Because:

All objects must update the same counter.


If count was non-static:

Each object would have its own count.


That would be wrong.

One-Line Understanding
Non-static variable

Each object has its own copy.

Static variable

All objects share one copy.*/
