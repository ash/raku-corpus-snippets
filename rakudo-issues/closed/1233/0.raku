my @c = ('A', 1), ('B', 2), ('D', 4);
my $x = ('C', 3);
@c.splice(2, 0, $x);
say @c.perl;    # OUTPUT: [("A", 1), ("B", 2), "C", 3, ("D", 4)]
