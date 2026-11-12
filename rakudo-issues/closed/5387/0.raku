grammar A {
    token TOP { foo }
}

class B {
    method TOP($/) { say "method TOP" }
}

say A.parse("foo", :actions(B));
