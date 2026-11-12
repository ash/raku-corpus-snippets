my $test = q:to<END>;
unit grammar Test;
#| sample leading declarator
rule x {X}
rule y {Y}
END

say $test.AST.DEPARSE;
