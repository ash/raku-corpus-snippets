my $x = -4.321;
my $fracx = $x.abs - $x.abs.Int;
my $num-decimal-places = $fracx == 0 ?? 0  !! ($fracx.chars-2)
say $num-decimal-places; # OUTPUT: "3"
