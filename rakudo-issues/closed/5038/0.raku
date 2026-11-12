class Foo {
    multi method foo(Any :$type) {
        say 1;
    }
    multi method foo(Any :$default!) {
        say 2;
    }
}

Foo.foo(:42default);
