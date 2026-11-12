#!/usr/bin/env perl6

use v6.d;

class Foo
{
    has $.attribute;

    method say-times($times)
    {
        say $.attribute * $times
    }

    method say-default-works
    {
        $.say-times(2)
    }

    method say-default-works-too
    {
        self.say-times: 2
    }

    method say-default-does-not-parse
    {
        $.say-times: 2
    }
}

my $foo = Foo.new: attribute => 42;

$foo.say-times: 2;

$foo.say-default-works;

$foo.say-default-works-too;
