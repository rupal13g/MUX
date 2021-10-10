module mux_tb;
  reg ta, tb, tc, td, ts0, ts1;
  wire ty;
  integer i, j, k, l;
  mux_4_1 m(.a(ta), .b(tb), .c(tc), .d(td), .s0(ts0), .s1(ts1), .y(ty));
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100 $finish;
    end
  initial
    begin
      $monitor (ta, tb, tc, td, ts0, ts1, ty);
      ta = 1'b1; tb = 1'b0; tc = 1'b0; td = 1'b0;
      for (i=0; i<4; i=i+1)
        begin
          {ts1, ts0} = i;
          #5;
        end
      ta = 1'b0; tb = 1'b1; tc = 1'b0; td = 1'b0;
      for (j=0; j<4; j=j+1)
        begin
          {ts1, ts0} = j;
          #5;
        end
      ta = 1'b0; tb = 1'b0; tc = 1'b1; td = 1'b0;
      for (k=0; k<4; k=k+1)
        begin
          {ts1, ts0} = k;
          #5;
        end
      ta = 1'b0; tb = 1'b0; tc = 1'b0; td = 1'b1;
      for (l=0; l<5; l=l+1)
        begin
          {ts1, ts0} = l;
          #5;
        end
    end
endmodule
