use Test; my $*a = 42; await start { is $*a, 42 }
