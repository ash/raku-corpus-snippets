role Container {
    has $!delegate;
    method item is raw { $!delegate.item }
    method throw-unless-default(--> True) { }
}

role Container[::V] does Positional[V] {
    has @!delegate is built(:bind);
    method AT-POS(+args) is raw { @!delegate.AT-POS: |args }
    method EXISTS-POS(+args) { @!delegate.EXISTS-POS: |args }
    method elems { @!delegate.elems }
}

role Container[::V, ::K] does Associative[V, K] {
    has %!delegate is built(:bind);
    method AT-KEY(+args) is raw { %!delegate.AT-KEY: |args }
    method EXISTS-KEY(+args) { %!delegate.EXISTS-KEY: |args }
    method elems { %!delegate.elems }
}

BEGIN say (
    try all (Container.new, my @ is Container, my % is Container)
        X~~ -> Container $topic is raw { $topic.throw-unless-default }
) // $!;
