{
    my %h;
    %h = :42a, :b(%h);
    is-deeply %h.raku.EVAL<b><b><b><a>, 42,
        'can .raku.EVAL roundtrip a circular hash';
}
