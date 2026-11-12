#!/usr/bin/env raku

use v6.d;

my $string = "abc"; # line 5

if $string !~~ "abc" # line 7
{
    say "a" # line 9
}
elsif $string < 0x20 # line 11
{
    say "b"
}
