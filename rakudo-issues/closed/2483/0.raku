class Foo {
    method (Int :$foo = 0) {
        if ($foo == 0) {
            # I cannot tell if this call is from Foo.foo() or from Foo.foo(foo => 0);
            }
        }
    }
