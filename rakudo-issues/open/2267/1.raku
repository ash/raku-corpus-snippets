my @a = lazy 1,; my @b = @a.clone; @a[40] = 100; say @b[40]
