class Foo { has $.bar }; say Foo.new(:bar<baz>);
class Foo { has $.bar }; say Foo.new(|{:bar<baz>})
