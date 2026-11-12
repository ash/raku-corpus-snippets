sub build(@items) {
    my $re = @items.join('|');
    my token FULLRE { ^ <{$re}> };
    return &FULLRE;
}

my $a = build(['a']);
my $b = build(['b']);
say $a === $b;                   # 2026.09: True (same code object!)
