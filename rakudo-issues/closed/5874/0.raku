use v6.e.PREVIEW; role A { has $.a = 1; submethod m1() { say $.a; } }; my $c = A.new();
