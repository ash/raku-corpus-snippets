my &func = &max;
say func([3, 5, 2]);    # OUTPUT: 5

# OR

sub foo(&func, |c) {
    return func(|c);
}

say foo(&max, [3, 5, 2]);    # OUTPUT: 5
