#!/usr/bin/env raku

class Data {
    has uint32 $.a;
    has uint32 $.b;
    has uint32 $.c;
    has uint32 $.hashlen;
    has Buf $.salt;
}

for 1 .. 20000 {
    my $meta = Data.new(:salt(Buf.new), :hashlen(32));
    die "attempt $_: hashlen: {$meta.hashlen} != 32" if $meta.hashlen != 32;
}

say "ok";
