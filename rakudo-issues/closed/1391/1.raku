await ^1000 .map: {start '{my $x}; { my $y }'.EVAL}; say "all good"
