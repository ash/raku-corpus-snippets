my constant obs = class {};
my @seen;
multi sub trait_mod:<does>(Variable:D $v, obs) {
    $v.block.add_phaser: 'LEAVE',
        $v.willdo: -> \var { @seen.push(var) };
}
sub f() { my $fh does obs = 42; }
my @x := @seen;   # any executed read here breaks the sharing
f();
say @seen.raku;   # []  -- delete the marked line and it prints [42]
