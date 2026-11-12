#!/usr/bin/env perl6

use v6;

my $count = 0;

while $count < 10000 {
    my $a = Proc::Async.new(<cat die.t>);
    my $b = Proc::Async.new(<cat>);
    $b.bind-stdin: $a.stdout: :bin;
    ## Comment out this line, it hangs at 241
    $b.stdout.tap(-> $buf {});
    await Promise.allof: |$a.start,$b.start;
    say ++$count;
}
