use v6.d.PREVIEW; for ^1000 { my $z = 42; start { $z.abs } }; sleep 1;
