my @lazy-list = 0..*;
my @also-lazy = @lazy-list.kv;
# RESULT: Evaluation of @also-lazy deferred

say @also-lazy[^10];
# OUTPUT: (0 0 1 1 2 2 3 3 4 4)
