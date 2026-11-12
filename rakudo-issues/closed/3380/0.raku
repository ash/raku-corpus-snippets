use Test;
plan 3;

my $seq = gather {
    my $i = 0;
    while 1 { take $i++ }
};

ok $seq.is-lazy, '.is-lazy returns True on infinite gather';

is $seq.gist, (0..100).list.gist, '.gist';

my $test = start { $seq.is-lazy };
await Promise.anyof($test, Promise.in(5));
ok $test, '.is-lazy does not hang after .gist';
