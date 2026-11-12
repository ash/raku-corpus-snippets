#!/usr/bin/env raku

multi sub trait_mod:<is>(Variable:D \v, :$var-defined!) { say defined v.var }

my @a    is var-defined;
my @b[1] is var-defined;

# OUTPUT:
# True
# False
