class Foo { has %.bar }; say Foo.new(:bar({baz => 42}));
class Foo { has %.bar }; say Foo.new(|{:bar({baz => 42})})
