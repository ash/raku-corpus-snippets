my $i = 0;
loop {
   FIRST { say "FIRST: $i"};
   LAST { say "LAST: $i"};
   last if ++$i > 100;
}
