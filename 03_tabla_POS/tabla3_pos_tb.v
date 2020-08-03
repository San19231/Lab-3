module modulo();

  reg A, B, C, D;
  wire w1, w2, w3, w4 , w5, w6, w7, w8, w9, w10, w11, w12, w13, out;

  not n1(w1, A);
  not n2(w2, B);
  not n3(w3, C);
  not n4(w4, D);
  or o1(w5, A, w2, C, D);
  or o2(w6, A, w2, C, w4);
  or o3(w7, A, w2, w3, D);
  or o4(w8, A, w2, w3, w4);
  or o5(w9, w1, B, C, w4);
  or o6(w10, w1, B, w3, w4); 
  or o7(w11, w1, w2, C, D);
  or o8(w12, w1, w2, C, w4);
  or o9(w13, w1, w2, w3, w4);
  and a1(out, w5, w6, w7, w8, w9, w10, w11, w12, w13);

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
      $dumpfile("tabla3_pos_tb.vcd"); 
      $dumpvars(0, modulo);
    end 

endmodule