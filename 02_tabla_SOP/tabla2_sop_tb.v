module modulo();



  reg A, B, C;
  wire w1, w2, w3, w4 , w5, w6, out;

  not n1(w1, A);
  not n2(w2, B);
  not n3(w3, C);
  and a1(w4, w1, w2, C);
  and a2(w5, A, B, w3);
  and a3(w6, A, B, C);
  or o1(out, w4, w5, w6);

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
      $dumpfile("tabla2_sop_tb.vcd"); 
      $dumpvars(0, modulo);
    end 

endmodule