my @a = 1, 2, 3;
my @b := @a.clone;

@a[0] = 100;

say @a;  # [100 2 3]
say @b;  # [1 2 3]
