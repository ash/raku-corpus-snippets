sub foo {
    LEAVE { say 42 } if False;
    99
};
foo # 42
