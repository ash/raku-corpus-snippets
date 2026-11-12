#!/usr/bin/env raku
for 5, * × 1.5 … * > 1000 {
    #.say;
    my $times = .Int;
    my $code = 42;
    $code = “Int($code)” for ^$times;
    my $before = now;
    run <perl6 -c -e>, $code;
    my $after = now;
    put $times, ‘ ’, $after - $before;
}
