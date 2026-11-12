my %pow; for ^100_000 { %pow{1e300.rand.comb(/\d+/).tail}++ }; say %pow
