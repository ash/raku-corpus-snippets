my $x = 1;
my $result := ($x, 2, 3, 4).reduce: -> $a is raw, $ {
    say ($a, $a.VAR.^name);
    $a
};
say ($result, $result.VAR.^name);
