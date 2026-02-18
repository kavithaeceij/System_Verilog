class scoreboard;

  static int error_count = 0;

  static function void report_error(string msg);
    error_count++;
    $display("[ERROR] %s", msg);
  endfunction

endclass


module test;

  initial begin
    scoreboard::report_error("Packet mismatch");
    scoreboard::report_error("Timeout");

    $display("Total errors = %0d",
             scoreboard::error_count);
  end

endmodule
/*Output:

[ERROR] Packet mismatch
[ERROR] Timeout
Total errors = 2


No object created.*/
