say     (0, 1, 2) xx 2;                 # OK
say     (0, 1, 2) xx 2 if 1==1;         # OK
my $a = (0, 1, 2) xx 2;         say $a; # OK
my $b = (0, 1, 2) xx 2 if 1==1; say $b; # no, run-time  error
