role R1 { submethod foo { "R1::foo" } }
role R2 does R1 { }
class Foo does R2 { submethod foo { "Foo::foo" } }
