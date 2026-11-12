my @a = 1,2,|<a b>;
say @a.grep(1|'a'); # OUTPUT: (1 a)

my $s = 'a/b:c';
say $s.split('/'|':'); # OUTPUT: any((a b:c), (a/b c))
