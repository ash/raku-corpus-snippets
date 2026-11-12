use Test; my $*a = 42; react whenever Promise.in: 1 { await start { is $*a, 42 } } # should this work?
