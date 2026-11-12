    my $a = 42;
    my $m  := Map.new: (a => $a);
    my $m2 := Map.new: (a => 42);
    say $m === $m2; # True
