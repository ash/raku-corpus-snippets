my $a = q[my $foo = "foo" if True].AST; say $a.DEPARSE;
