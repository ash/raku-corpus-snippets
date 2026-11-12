#!/usr/bin/env perl6

my $execute_max = 2;
my $timeout = 10;

my $channel = Channel.new;

$channel.send(1);
$channel.send(2);

my $worker = start {
    for (1..$execute_max) {
        my $timed-out = False;
        react {
            note "try to receive $channel ";
            whenever $channel {
                note "received from backfill-channel $_";
                done;
            }
            whenever Promise.in($timeout) {
                note "timed out";
                $timed-out = True;
                done;
            }
        }
        last if $timed-out;
    }
    note "finishing worker";
};

await($worker);
note "workers done, remaining in Channel: " ~ $channel.poll.gist;
