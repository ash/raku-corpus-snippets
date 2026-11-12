#!/usr/bin/env perl6
my $c = Channel.new;
for ^2_000_000 {
    $c.send: $_;
    say 1
}
