(my @a is default(Nil))[3] = 42; say @a[1]:exists; say @a; { temp @a; Nil }; say @a[1]:exists; say @a
