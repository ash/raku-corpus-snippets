my $foo = "abc";
my $bar = "x";
say try qq:to/MESSAGE/;
$foo.subst("a", $bar)
MESSAGE
