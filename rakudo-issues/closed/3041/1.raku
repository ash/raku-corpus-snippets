my @lazy-list = 0..*;
my @also-lazy = @lazy-list.kv;
# RESULT: Eagerly evaluated and running indefinitely
