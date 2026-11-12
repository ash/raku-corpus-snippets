my $n = 1 / 0;
$n ~~ Failure;  # should be True, but is False
dd $n;  # OUTPUT: Rat $n = <1/0>

# This works though
my $m = 1 % 0;
$n ~~ Failure;  # True
