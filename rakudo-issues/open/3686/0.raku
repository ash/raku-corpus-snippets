#!/usr/bin/env raku

use Test;

my $number_of_channels = 2;

my @channels := [1..$number_of_channels].map({ Channel.new }).list;

my $source = start {
    react {
        for 0..@channels.end -> $num {
            my $i = 0;
            whenever Supply.interval(0.001) {
                if $i++ < 100 {
                    @channels[$num].send($num);
                }
                else {
                    done
                }
            }
        }
    }
}

my @received;
my $stopper = Promise.new;

my $sink = start {
    while $stopper.status == Planned {
        react {
            for @channels -> $channel {
                whenever $channel {
                     @received[$_]++;
                    done;
                }
            }
            whenever $stopper { done }
        }
    }
}

await($source);
sleep 2;
$stopper.keep;
await($sink);

# for easy manual test
note @received;

# for unit test
#is @received.elems, @channels.elems, "data from both Channels should have been received";
#for 0..@channels.end {
#    is @received[$_], 100, "100 items should have been read from the Channel $_";
#}
