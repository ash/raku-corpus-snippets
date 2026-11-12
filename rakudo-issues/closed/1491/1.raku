my $i = 1; my $z; { for ^10000_000 { $z = 1 + ++$i }; say now - ENTER now }
