use nqp; my $ts; for ^10_000_000 { $ts = nqp::time_n; }; say $ts; say now - INIT now;
