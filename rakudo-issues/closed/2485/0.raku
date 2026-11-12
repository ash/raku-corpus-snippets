say <a b c>.elems; # 3
say <a b c>.head; # a
say <a b c>.head(3); # (a b c)
say <a b c>.head(2); # (a b)
say <a b c>.head(.elems - 1); # ()
say <a b c>.head(*.elems - 1); # (a b c)
say <a b c>.head({$_.elems - 1}); # (a b c)
