#! /usr/bin/env raku
use v6.d;
subset PosInt   of Int   where     * > 0;
sub to-roman(PosInt() $n is copy) {
    my $digit = 2;
    my $order = 5;
    $n -= $digit * $order;
}
say to-roman(9)
