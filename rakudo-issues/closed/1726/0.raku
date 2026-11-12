say <a 1> ⊍ <a 2>; # Bag(a)
say (<a 1>,) X⊍ (<a 2>,); # (Bag(1, 2, a(2))) seems to use baggy addition
say cross((<a 1>,), (<a 2>,), :with(&infix:<⊍>)); # Also wrong
say cross((<a 1>,), (<a 2>,), :with(* ⊍ *)); # Works
