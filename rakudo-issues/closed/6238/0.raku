sub outer() {
  my @x; my @y;
  reduce(@x, @y);            # call resolves to CORE &reduce here…
  sub reduce(@a, @b) { @a }  # …but a lexical `reduce` is declared *after* the call
}
outer();
