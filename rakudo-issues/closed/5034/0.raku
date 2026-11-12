class Foo::Bar { ... }
role Foo {
  method foo { ... }
  method COERCE($in) {
    return Foo::Bar.new
  }
}
class Foo::Bar does Foo {
  method foo {}
}
my Foo(Any) $foo = 1;
