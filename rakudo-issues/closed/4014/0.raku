my $p1 = Parameter.new(type => Int);
my $p2 = Parameter.new(type => Str);
my $p3 = Parameter.new(type => Int, default => 42);
my $p4 = Parameter.new(type => Int, name => ':$val');

my $s = Signature.new(
            params => ($p1, $p2, $p3, $p4),
            count => 3,
            arity => 2
        );

say $s;
say "arity = ", $s.arity;
say "count = ", $s.count;
