#| leading a
sub a { #| leading b
        #= trailing a (1)
}
#= trailing a (2)

sub b { }

say "&a.WHY: " ~ &a.WHY.raku;
say "&b.WHY: " ~ &b.WHY.raku;
