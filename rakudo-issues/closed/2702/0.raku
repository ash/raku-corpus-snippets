my @array = < a ab >;
say 'abc' ~~ /  |< a ab >    b /;  # ab
say 'abc' ~~ /  |@array      b /;  # Nil (expected ab)
say 'abc' ~~ /  |@(< a ab >) b /;  # Nil (expected ab)
say 'abc' ~~ / ||< a ab >    c /;  # abc
say 'abc' ~~ / ||@array      c /;  # Nil (expected abc)
say 'abc' ~~ / ||@(< a ab >) c /;  # Nil (expected abc)
