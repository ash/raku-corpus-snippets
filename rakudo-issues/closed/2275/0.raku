class Foo {
    has $!a;
    method f(:$!a) { }
}
print Foo.^find_method('f').signature.params.[0].twigil;
