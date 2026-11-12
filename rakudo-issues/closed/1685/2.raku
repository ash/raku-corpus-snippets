my %pow; for ^10_000 { %pow{1e30.rand.comb(/\d+/).tail}++ }; say %pow
