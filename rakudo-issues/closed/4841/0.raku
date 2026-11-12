#!/usr/bin/env raku
use v6;
role Node {
    method ptp(Str $cond) returns Array of Str {
        Array[Str].new('a', 'b', 'c', 'd', 'e', $cond, 'g', 'h');
    }
}

sub ptp2(Str $cond) returns Array of Str {
    Array[Str].new('a', 'b', 'c', 'd', 'e', $cond, 'g', 'h');
}

class Thing does Node {
    method sc() returns Str {
        'thing' ~ ' and ' ~ 'another and ' ~ 'the last';
    }
    method test() {
        my @p = $.ptp($.sc);
        say "ptp: @p.elems: " ~ @p.elems;
        say "" ~ @p;
    }
    method ptp3(Str $cond) returns Array of Str {
        Array[Str].new('a', 'b', 'c', 'd', 'e', $cond, 'g', 'h');
    }
}

sub MAIN() {
    my $t = Thing.new;
    $t.test;
    my @p2 = ptp2($t.sc);
    say "ptp2: @p2.elems: " ~ @p2.elems;
    say "" ~ @p2;
    my @p3 = $t.ptp3($t.sc);
    say "ptp3: @p3.elems: " ~ @p3.elems;
    say "" ~ @p3;
}
