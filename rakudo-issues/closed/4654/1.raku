use Test; my $*a = 42; react whenever Promise.in: 1 { is $*a, 42 }
