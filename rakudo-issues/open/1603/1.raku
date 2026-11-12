class Foo { our $z; method set-z { $z := 42 } }; with Foo.new { .set-z; say $Foo::z }
