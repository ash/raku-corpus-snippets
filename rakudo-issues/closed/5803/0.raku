#!/usr/bin/env raku
# :vim ft=raku sw=4 expandtab  # 🦋 ∅∪∩∋∈∉⊆ ≡ ≢ «␤ » ∴
use v6.e.PREVIEW;
use Test;

# The docs say $x.=method… is sugar for $x=$x.method…
# This is to display an oddity where that fails.

my Str $s;

$s = 'abcd';
$s = $s.comb(  1=>0, :partial).map( {'a'}).join;
is $s, 'aaaa';

$s = 'abcd';
is   ($s.=comb( 1=>0, :partial).map( {'a'}).join ), 'aaaa';
=finish
ok 1 - 
Type check failed in assignment to $s; expected Str but got Seq (("a", "b", "c", "d")...)
  in block <unit> at bug.raku line 16
