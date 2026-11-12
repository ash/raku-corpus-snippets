use nqp; my $ts; for ^10_000_000 { $ts = now; }; say $ts; say now - INIT now;
