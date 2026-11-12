my $p1 = start loop {
  say "hello";
  sleep 1;
}

my $p2 = start {
  loop {
    say "world";
    sleep 1;
  }
}

sleep 3;
