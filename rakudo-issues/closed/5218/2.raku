my $min = 2; my $max = 4; say 'abcde' ~~ m:ex/ \w **? {$min..$max} /
# (｢ab｣ ｢abc｣ ｢abcd｣ ｢abcde｣ ｢bc｣ ｢bcd｣ ｢bcde｣ ｢cd｣ ｢cde｣ ｢de｣)
