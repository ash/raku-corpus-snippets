say "{+$_} found:\n{.batch(10).join: "\n"}" given (^100).hyper.grep: { .is-prime };
