try (a => Inf).Bag; say $!.^name; # X::Numeric::CannotConvert
try (a => Inf).Mix; say $!.^name; # X::OutOfRange
try (a => i  ).Bag; say $!.^name; # X::Numeric::Real (subclass of X::Numeric::CannotConvert)
try (a => "a").Bag; say $!.^name; # X::Str::Numeric
