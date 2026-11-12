class A { has @.xs }
my %args = xs => [1, 2, 3];
A.new(|%args.Map).say
