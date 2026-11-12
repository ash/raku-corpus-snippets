#! /usr/bin/env raku
subset Foo of Int;
my Foo:D %h;
sub a(Foo:D %f) { dd %f }
a %h
