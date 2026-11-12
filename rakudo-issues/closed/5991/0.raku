my $test = q:to<END>;
unit grammar G;
regex x {:my $v; X}
42; # a following statement
END

say $test.AST.DEPARSE;
