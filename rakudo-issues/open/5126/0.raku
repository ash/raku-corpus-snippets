class Foo {
    has int @.items is rw;

    method bug {
        @.items = ();
    }
}

Foo.new(items => (1,2)).bug();
