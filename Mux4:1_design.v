module mux_4_1(a, b, c, d, s0, s1, y);
  input a, b, c, d, s0, s1;
  output y;
  assign y = ~s1&~s0&a | ~s1&s0&b | s1&~s0&c | s1&s0&d;
endmodule
