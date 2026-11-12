my %pow; for ^100_000 { %pow{(10**300).rand.comb(/\d+/).tail}++ }; say %pow
