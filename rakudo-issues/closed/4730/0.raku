sub foo(Str :@foo) {
  say "success"
}
my $c = \();
say ?&foo.cando($c);
foo(|$c);
