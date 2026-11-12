sub bar(&some-code) {
    LEAVE { say ‘left’ };
    some-code()
};
sub foo {
    bar { return 42 } # this is a block of code that `return`s from `foo` but is executed in `bar`
};

for ^2 { say foo }
