module modulo();

  reg A, B, C, D;
  wire w1, w2, w3, w4 , w5, w6, w7, w8, w9, w10, w11, out;

  not n1(w1, A);
  not n2(w2, B);
  not n3(w3, C);
  not n4(w4, D);
  and a1(w5, w1, w2, w3, w4);
  and a2(w6, w1, w2, C, w4);
  and a3(w7, w1, w2, C, D);
  and a4(w8, w1, B, C, w4);
  and a5(w9, w1, B, C, D);
  and a6(w10, A, w2, w3, w4);
  and a7(w11, A, w2, C, w4);
  or o1(out, w5, w6, w7, w8, w9, w10, w11);

  initial begin
    $display("A B C D| Y");
    $display("----------");
    $monitor("%b %b %b %b| %b", A, B, C, D, out);
    A = 0; B = 0;C=0 ; D=0;
    #1 D = 1;
    #1 C = 1; D=0;
    #1 D = 1;
	#1 B=1; C=0; D=0;
	#1 D=1;
	#1 C=1; D=0;
	#1 D=1;
	#1 A=1; B = 0; C=0 ; D=0;
	#1 D = 1;
    #1 C = 1; D=0;
    #1 D = 1;
	#1 B=1; C=0; D=0;
	#1 D=1;
	#1 C=1; D=0;
	#1 D=1;
    #1 $finish;
  end

  initial 
    begin
      $dumpfile("tabla4_sop_tb.vcd"); 
      $dumpvars(0, modulo);
    end 

endmodule