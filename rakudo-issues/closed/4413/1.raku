say "{+$_} found:\n{@$_.batch(10).join: "\n"}" given (^100).hyper.grep: { .is-prime };
