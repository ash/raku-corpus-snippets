sub build(@items) {
    my $re = @items.join('|');
    my token FULLRE { ^ <{$re}> };
    return &FULLRE;
}

my $a = build(['a']);
say ('a' ~~ $a).Bool;            # True
my $b = build(['b']);
say $a.WHICH eq $b.WHICH;        # False  (distinct code objects)
say ('a' ~~ $a).Bool;            # True
say ('b' ~~ $a).Bool;            # False
