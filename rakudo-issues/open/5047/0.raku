role Foo { multi method foo(Int) { } }; class Bar does Foo { only method foo(Str) { } }
