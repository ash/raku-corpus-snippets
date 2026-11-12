sub foo(Real(Cool) $a) { dd $a }
foo my @a = <a b c>;  # 3
foo my str @a = <a b c>;
# Type check failed in binding to parameter '$a'; expected Real(Cool) but got array[str] (array[str].new("a", ...)
