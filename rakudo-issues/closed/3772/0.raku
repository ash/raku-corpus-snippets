sub foo() {
    react whenever Promise.in(1) { return 42 }
};
say foo
