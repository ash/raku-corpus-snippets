my $foo = "abc";
my $bar = "x";
say qq:to/MESSAGE/;
$foo.subst("a", $bar)
MESSAGE
