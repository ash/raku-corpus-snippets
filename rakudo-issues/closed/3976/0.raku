class Foo {
    multi submethod FOO { ... }
}
say "submethods: ", Foo.^submethod_table.keys;
say "methods   : ", Foo.^method_table.keys;
