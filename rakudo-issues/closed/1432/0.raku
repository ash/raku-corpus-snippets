(my @a is default(Nil))[3] = 42; say @a[1]:exists; say @a; { let @a; Nil }; say @a[1]:exists; say @a
