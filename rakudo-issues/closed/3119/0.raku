package P { our regex r { .+ } };
say 'match' ~~ P::r;
# rakudo-moar ecf2b1e4f: OUTPUT: «Too few positionals passed; expected 1 argument but got 0␤  in regex r at <tmp> line 1␤  in block <unit> at <tmp> line 1␤␤»
