my $rr = rx/<[bc]>/; say "abcd".comb.map({ so $rr })
