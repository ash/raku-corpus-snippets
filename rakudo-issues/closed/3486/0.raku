role Foo {
    my subset Bar of ::?CLASS;
    method bar(Bar: --> True) { }
}

say Foo.new.bar;
