my $a = DateTime.now;
my $b = DateTime.new(now);

say $a.second.WHAT; # Num
say $b.second.WHAT; # Rat
