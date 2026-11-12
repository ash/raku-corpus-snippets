multi sub trait_mod:<is>(Routine:D $r is raw, :$foo!) {
    $r.wrap: -> | { say 'ok'; callsame };
}

class Foo { method ^foo(Mu) is foo { } }
Foo.^foo;
