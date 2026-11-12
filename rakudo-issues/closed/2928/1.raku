my $a = [1];
say $a.VAR.name;
say $a.VAR.?name;
# OUTPUT: «$a␤Type check failed in binding to parameter '<anon>'; expected Array but got Scalar ([1])␤»
