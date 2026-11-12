use Test;
plan 1;

class Foo is Bag {}
isa-ok Foo.new("a") (+) Foo.new("b"), Foo, "union of two Foo instances should be a Foo instance";
