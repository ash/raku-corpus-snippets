my $a = q[my $foo = "foo" if True; $foo].AST; say $a.DEPARSE;
