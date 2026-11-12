#!/usr/bin/env perl6

#| this is some pod for the test sub
sub test( Str $s, Rat $r --> Associative ) { 
    return { $s => $r };
}
