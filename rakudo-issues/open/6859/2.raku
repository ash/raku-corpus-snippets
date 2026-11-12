class Foo { has @.bar }; say Foo.new(:bar([1, 2, 3]));
class Foo { has @.bar }; say Foo.new(|{:bar([1, 2, 3])})
