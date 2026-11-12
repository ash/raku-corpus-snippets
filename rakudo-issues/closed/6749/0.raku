my $a = (42 andthen *.succ);
my $b = (Any orelse *.raku);
say ($a.WHAT, $b.WHAT);
