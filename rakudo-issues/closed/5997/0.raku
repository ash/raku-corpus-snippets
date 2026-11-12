#!/usr/bin/env raku

grammar G {
    rule TOP { <a('c')> <b> }
    multi rule a($type) { 'x' { say "$type"; } }
    multi rule a { 'y' }
    rule b { 'z' }
}

my $g = G.new();

say $g.parse('xyz').raku;
