use nqp;

my $code = start {
    my $compiler := nqp::getcomp('Raku');
    my $g := nqp::findmethod($compiler,'parsegrammar')($compiler);
    my $a := nqp::findmethod($compiler,'parseactions')($compiler);
    $g.parse('say 42;', :p(0), :actions($a));
};

await $code;
