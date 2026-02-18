// Base packet class
class base_packet;

  int addr;
  int data;
  int id;

  function new(int a, int d, int i);
    addr = a;
    data = d;
    id   = i;
  endfunction

  function void display();
    $display("BASE PKT: id=%0d addr=%0d data=%0d", id, addr, data);
  endfunction

endclass



// Write packet
class write_packet extends base_packet;

  function new(int a, int d, int i);
    super.new(a, d, i); // call base constructor
  endfunction

  function void display();
    $display("WRITE PKT: id=%0d addr=%0d data=%0d", id, addr, data);
  endfunction

endclass



// Read packet
class read_packet extends base_packet;

  function new(int a, int i);
    super.new(a, 0, i); // data not used for read
  endfunction

  function void display();
    $display("READ PKT: id=%0d addr=%0d", id, addr);
  endfunction

endclass



// Simple driver
class driver;

  function void send(base_packet pkt);
    $display("Driver received packet:");
    pkt.display();
  endfunction

endclass



module tb;

  initial begin
    driver drv;
    write_packet w_pkt;
    read_packet  r_pkt;

    drv   = new();
    w_pkt = new(100, 55, 1);
    r_pkt = new(200, 2);

    // Send both packets through same driver
    drv.send(w_pkt);
    drv.send(r_pkt);
  end

endmodule

/*Expected Output
Driver received packet:
WRITE PKT: id=1 addr=100 data=55
Driver received packet:
READ PKT: id=2 addr=200*/

