multi sub f(Int \a where * > 0, Any \b) { }
multi sub f(Any \a, Int \b where * < 100) { }
f(42, 42) # the former is taken
