module modulo();



  reg A, B , C;
  wire w1, w2, w3, w4 , w5, w6, out;

  not n1(w1, A);
  not n2(w2, B);
  not n3(w3, C);
  or o1(w4, A, B,w3);
  or o2(w5, A, w2, w3);
  or o3(w6, w1, w2, w3);
  and a1(out, w4, w5, w6);

  initial begin
    $display("A B C| Y");
    $display("-------");
    $monitor("%b %b %b| %b", A, B, C, out);
    A = 0; B = 0;C=0 ;
    #1 C = 1;
    #1 B = 1; C=0;
    #1 C = 1;
	#1 A=1; B=0; C=0;
	#1 C=1;
	#1 B=1; C=0;
	#1 C=1;
    #1 $finish;
  end

  initial 
    begin
      $dumpfile("tabla1_pos_tb.vcd"); 
      $dumpvars(0, modulo);
    end 

endmodule