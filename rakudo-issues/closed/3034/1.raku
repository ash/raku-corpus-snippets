module M {
    our sub foo() { say "foo" }
}

# this works
&M::foo() if True;
