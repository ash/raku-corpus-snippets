class Foo {has $.a; method test {$.a = 5}}; my $f = Foo.new; $f.test; say $f.a
