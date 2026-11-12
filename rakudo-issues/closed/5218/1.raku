my $min = 2; my $max = 4; say 'abcde' ~~ m:ex/ \w ** 2..4 /
# (｢abcd｣ ｢abc｣ ｢ab｣ ｢bcde｣ ｢bcd｣ ｢bc｣ ｢cde｣ ｢cd｣ ｢de｣)
