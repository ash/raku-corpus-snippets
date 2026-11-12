module M {
    our sub foo() { say "foo" }
}

# this also works
if True { M::foo }
