role Foo[\] { }
class Bar {
    proto method baz($ --> Bool:D)                 {*}
    multi method baz(::T: $ where Foo[T] --> True) { }
    multi method baz($ --> False)                  { }
}

say Bar.baz: Foo[Bar];
