class packet #(parameter WIDTH = 4);

  bit [WIDTH-1:0] data;

  function new(bit [WIDTH-1:0] d);
    data = d;
  endfunction

  function void display();
    $display("WIDTH = %0d, data = %0d", WIDTH, data);
  endfunction

endclass


module test;

  packet #(4) p1;
  packet #(8) p2;

  initial begin
    // Correct constructor calls
    p1 = new(10);
    p2 = new(200);

    p1.display();
    p2.display();
  end

endmodule

//Expected Output
//WIDTH = 4, data = 10
//WIDTH = 8, data = 200
