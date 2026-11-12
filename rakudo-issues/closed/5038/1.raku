multi foo(Any :$type) {
    say 1;
}
multi foo(Any :$default!) {
    say 2;
}
foo(:42default);
