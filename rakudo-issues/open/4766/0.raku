package Foo {
    role Some::Bar {};
    my class Some::Baz does Some::Bar {}
}
Foo::Some::Baz.new
