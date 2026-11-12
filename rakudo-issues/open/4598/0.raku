enum E <E1 E2 E3>;

sub f ($a, E(Int) $b) { .say for $a, $b.raku };

f 2, 1;
=output 2␤E::E2␤

&f.assuming(2);
=begin output
===SORRY!=== Error while compiling ...../EVAL_2
Malformed parameter
at ..../EVAL_2:1
------> my $res = (my proto __PRIMED_ANON ((Int)⏏ $b --> Mu) { {*} });
    expecting any of:
        constraint
=end output
