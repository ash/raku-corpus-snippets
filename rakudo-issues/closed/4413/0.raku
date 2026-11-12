say "{+$_} found:\n{.batch(10).join: "\n"}" given (^100).grep: { .is-prime };
