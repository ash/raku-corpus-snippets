use v6.d;

my class Foo {
    my atomicint $next-index = 0;
    has Int:D $.index = $next-index⚛++;
}

BEGIN say Foo.new.index;
BEGIN say Foo.new.index;
BEGIN say Foo.new.index;
