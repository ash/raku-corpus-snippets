#! /usr/bin/env perl6
use v6.d.PREVIEW;
#use v6.c;

say $*PERL.compiler;

my $seq = gather {
  sleep 2;   # delay the first value
  for ^3 {
    .take;
    sleep ⅔; # delay between values
  }
}

# this is to show that it is blocking the other whenever
Promise.in(1+⅞).then: { say 'Should have printed several lines by now' }

react {
  whenever Supply.interval(¼) {
    say "$_ Supply";
  }
  whenever $seq.Supply {
    LAST done;
    say "$_ Seq";
  }
}
