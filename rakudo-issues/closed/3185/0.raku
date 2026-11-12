my $a; $a = $_.starts-with("1").Int for ^1_000_000; say now - INIT now
