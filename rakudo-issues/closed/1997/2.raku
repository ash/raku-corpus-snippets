class A { has $.a is rw = 1; }
my $x = A.new;
my $y = $x.clone;

$x.a = 100;

say $x.a;  # 100
say $y.a;  # 1
