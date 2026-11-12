say <a 1>.Bag ∪ <a 2>.Bag; # Bag(1, 2, a)
say (<a 1>.Bag,) X∪ (<a 2>.Bag,); # (set(Bag(1, a) Bag(2, a)))
say cross((<a 1>.Bag,), (<a 2>.Bag,), :with(&infix:<∪>)); # Also wrong
say cross((<a 1>.Bag,), (<a 2>.Bag,), :with(* ∪ *)); # Works
