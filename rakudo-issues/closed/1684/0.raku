my $end = 9;

loop (
    my $i = 0
  ;
    $i < (once ++$end)  # <--
  ;
    ++$i
) {
  last if $i > 20
};

say $end;
