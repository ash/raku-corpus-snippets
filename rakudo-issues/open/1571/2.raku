class Foo { method sink { say "sunk" }; method meow { self } }; sub { Foo.meow for ^1 }()
