sub build(@items) {
    my $re = @items.join('|');
    my token FULLRE { ^ <{$re}> };
    return &FULLRE;
}

my $a = build(['a']);
say ('a' ~~ $a).Bool;            # expected True
my $b = build(['b']);
say $a === $b;                   # expected False
say $a.WHICH eq $b.WHICH;        # expected False
say ('a' ~~ $a).Bool;            # expected True
say ('b' ~~ $a).Bool;            # expected False
