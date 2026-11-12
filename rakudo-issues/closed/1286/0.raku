multi sub f(Int \a, Any \b) { }
multi sub f(Any \a, Int \b) { }
f(42, 42) # ambiguous
