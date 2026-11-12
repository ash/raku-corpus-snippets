multi sub ln ( Str $a, Str  $b, Str $c) {
  say "$a $b $c";
}

my &ln1 = &ln.assuming( 'ab', *);
ln1('kjh','jgh');
