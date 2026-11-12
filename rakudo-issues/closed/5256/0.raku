for (IterationBuffer, Setty, Set, Map, Hash, Range, Uni, IterationBuffer, List, Array, Iterable, Buf, Positional, Associative, Baggy, Int, Cool, IO) {
  print "Type under test: {.^name}\n.elems call produced: ";
  try {
    my $elems = .elems;
    say $elems;
  }
  $! andthen .^name.say;
}
