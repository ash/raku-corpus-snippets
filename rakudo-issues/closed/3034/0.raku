module M {
    our sub foo() { say "foo" }
}

# this will error with "Cannot find method 'Nil' on object of type List"
M::foo if True;
