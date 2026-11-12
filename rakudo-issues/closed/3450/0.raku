class Foo {
    has Int $.a;
    BEGIN {
        for ::?CLASS.^attributes -> $attr {
            if $attr.name eq '$!a' {
                $attr.set_build(-> | { 42 });
            }
        }
    };
}

say Foo.new.a;
