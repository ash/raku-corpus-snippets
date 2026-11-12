role T { has $.a }; my $foo = 1 does T(:x(5)); say $foo.a.perl;
