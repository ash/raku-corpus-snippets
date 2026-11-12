my %hash;
my @path = <a b c>;
my $value = 42;

my $slot := (%hash, |@path).reduce: &postcircumfix:<{ }>;

$slot = $value;  # ERROR: Cannot assign to an immutable value
say %hash;       # EXPECTED: {a => {b => {c => 42}}}
