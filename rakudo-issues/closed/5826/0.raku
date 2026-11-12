sub foo($id) { start {
    my $count = 0;
    multi sub bar { $count++; say "hello from $id!" }
    await start { bar; say $count; }
} }
await foo(1), foo(2);
